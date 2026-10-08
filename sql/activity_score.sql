-- Venue activity score
--
-- The full reasoning behind every choice below lives in MODEL.md, numbered by
-- section; comments here only point at it, they don't repeat it.
--
-- Expected schema (adapt freely — only the shapes matter):
--
--   events(user_id uuid, venue_id text, venue_name text,
--          lat double precision, lon double precision, created_at timestamptz)
--
--   friendships(user_a uuid, user_b uuid, status text)   -- status = 'accepted' is mutual
--
-- Returns one row per venue with two scores that answer two different
-- questions and should never be summed:
--
--   activity_now      "there are people there right now" — only parties of 2+,
--                      time-decayed (MODEL.md §6). Near-zero most of the time
--                      with a small user base, and that's the correct answer,
--                      not a bug.
--   activity_usual     "this venue is generally lively" — a standing estimate,
--                      not tied to the present moment (MODEL.md §8).
--
-- `security definer` is a Postgres detail from the original deployment (the
-- function needed to read across a friendship/visibility boundary that the
-- caller's own row-level-security would otherwise block) — keep it only if
-- your own schema has a similar boundary to cross; drop it otherwise.

create or replace function public.venue_activity_score(
  window_days integer default 56,
  min_lat double precision default null,
  min_lon double precision default null,
  max_lat double precision default null,
  max_lon double precision default null
)
returns table (
  venue_id          text,
  venue_name        text,
  lat               double precision,
  lon               double precision,
  activity_now      double precision,
  activity_usual    double precision,
  party_sessions    bigint,
  distinct_people   bigint,
  -- 0..1, how much the ordering between venues can be trusted (MODEL.md §7).
  confidence        double precision,
  -- Exposed so the active regime can be inspected rather than guessed from
  -- the output numbers.
  theta             double precision
)
language sql
security definer
set search_path = public
stable
as $$
with recursive
window_ as (
  select greatest(least(coalesce(window_days, 56), 365), 7)::int as days
),
raw_events as (
  select
    e.venue_id,
    e.user_id,
    e.created_at,
    e.venue_name,
    e.lat,
    e.lon,
    -- MODEL.md §1: the session boundary, not the calendar date. 6h is a
    -- placeholder cutoff for "nobody's still out" — tune to your domain.
    ((e.created_at at time zone 'UTC') - interval '6 hours')::date as session
  from events e
  cross join window_ w
  where e.venue_id is not null
    and e.lat is not null
    and e.lon is not null
    and e.created_at >= now() - make_interval(days => w.days)
    and (min_lat is null or e.lat between min_lat and max_lat)
    and (min_lon is null or e.lon between min_lon and max_lon)
),
presences as (
  -- MODEL.md §2: distinct people, not raw events.
  select
    venue_id, session, user_id,
    min(created_at) as first_seen,
    max(created_at) as last_seen
  from raw_events
  group by 1, 2, 3
),
regime as (
  select
    count(distinct user_id) as n_active,
    least(greatest((count(distinct user_id)::double precision - 20.0) / 20.0, 0.0), 1.0)
      as theta
  from presences
),
edges as (
  -- MODEL.md §3: two people present in the same venue/session who are mutual
  -- friends. Symmetric on purpose (both directions), feeds the closure below.
  select p1.venue_id, p1.session, p1.user_id as a, p2.user_id as b
  from presences p1
  join presences p2
    on p2.venue_id = p1.venue_id
   and p2.session  = p1.session
   and p2.user_id <> p1.user_id
  join friendships f
    on f.status = 'accepted'
   and least(f.user_a, f.user_b)    = least(p1.user_id, p2.user_id)
   and greatest(f.user_a, f.user_b) = greatest(p1.user_id, p2.user_id)
),
reaches as (
  -- Transitive closure within a single (venue, session).
  select venue_id, session, a, b from edges
  union
  select r.venue_id, r.session, r.a, e.b
  from reaches r
  join edges e
    on e.venue_id = r.venue_id and e.session = r.session and e.a = r.b
),
labeled as (
  -- A party is named by its smallest reachable user id; everyone in it gets
  -- the same label. No edges = a party of one.
  select
    p.venue_id, p.session, p.user_id, p.first_seen, p.last_seen,
    least(p.user_id::text, coalesce(min(r.b::text), p.user_id::text)) as party
  from presences p
  left join reaches r
    on r.venue_id = p.venue_id and r.session = p.session and r.a = p.user_id
  group by p.venue_id, p.session, p.user_id, p.first_seen, p.last_seen
),
party_sessions_ as (
  -- MODEL.md §4: concave weight per party, computed here so Σ√k ≠ √Σk holds.
  select
    venue_id, session, party,
    count(*)        as size,
    min(first_seen)  as first_seen,
    max(last_seen)   as last_seen,
    case when count(*) = 1 then 0.25 else sqrt(count(*)) end as w
  from labeled
  group by 1, 2, 3
),
shares as (
  -- Each party's weight split evenly among its members — feeds the
  -- per-person diversity term below (MODEL.md §5).
  select ps.venue_id, l.user_id, ps.w / ps.size as share
  from party_sessions_ ps
  join labeled l
    on l.venue_id = ps.venue_id and l.session = ps.session and l.party = ps.party
),
diversity as (
  -- MODEL.md §5: Hill number of order 2 (inverse Simpson) over shares.
  select
    venue_id,
    power(sum(share), 2) / nullif(sum(power(share, 2)), 0) as distinct_people_eff
  from shares
  group by venue_id
),
per_venue as (
  select
    venue_id,
    sum(w)                                      as weight_sum,
    count(*)                                    as n_party_sessions,
    count(*) filter (where size >= 2)            as n_parties_2plus
  from party_sessions_
  group by venue_id
),
people_per_venue as (
  select venue_id, count(distinct user_id) as distinct_people
  from labeled group by venue_id
),
exposure as (
  -- How many sessions this venue COULD have been observed in. A venue that
  -- showed up 3 days ago shouldn't be scored as if it had been silent for
  -- the whole window.
  select
    r.venue_id,
    least(
      (select days from window_)::double precision,
      greatest(extract(epoch from now() - min(r.created_at)) / 86400.0, 1.0)
    ) as effective_sessions
  from raw_events r
  group by r.venue_id
),
now_score as (
  -- MODEL.md §6: Weibull conditional survival, not plain exponential decay.
  -- κ=1.8, η=3.03h fit a "people usually stay ~2.5h" domain — recalibrate
  -- both for a different one. least(…, 700) just guards exp() underflow.
  select
    venue_id,
    sum(
      w * exp(-least(
        power((extract(epoch from now()      - first_seen) / 3600.0) / 3.03, 1.8)
      - power((extract(epoch from last_seen   - first_seen) / 3600.0) / 3.03, 1.8)
      , 700.0))
    ) as now_raw
  from party_sessions_
  where size >= 2
  group by venue_id
),
globals as (
  select
    avg(w)                                                            as mean_w,
    case when avg(w) > 0 then avg(power(w, 2)) / avg(w) else 1.0 end  as phi_raw
  from party_sessions_
),
scale as (
  -- MODEL.md §7-§8: the knobs that ramp with θ.
  select
    r.theta,
    g.mean_w,
    1.0 + (g.phi_raw - 1.0) * r.theta as phi,     -- overdispersion correction
    0.5 * r.theta                      as delta    -- weight of the diversity term
  from regime r cross join globals g
),
effective as (
  select
    pv.venue_id,
    pv.weight_sum / s.phi                     as s_eff,
    ex.effective_sessions * s.mean_w / s.phi  as e_eff
  from per_venue pv
  join exposure ex on ex.venue_id = pv.venue_id
  cross join scale s
),
hyperparams as (
  -- MODEL.md §8: Gamma(α, β) prior on the venue's rate. β is "how many
  -- sessions' worth of exposure the prior is worth" — 3x the typical
  -- exposure in the conservative regime, 1x in the data-rich one.
  select
    percentile_cont(0.5) within group (order by e.e_eff) * (3.0 - 2.0 * s.theta) as beta,
    coalesce(sum(e.s_eff) / nullif(sum(e.e_eff), 0), 0.0)                        as global_rate
  from effective e cross join scale s
  group by s.theta
),
mean_diversity as (
  select coalesce(avg(distinct_people_eff), 1.0) as avg_diversity from diversity
),
venues as (
  select
    r.venue_id,
    (array_agg(r.venue_name order by r.created_at desc))[1] as venue_name,
    avg(r.lat) as lat,
    avg(r.lon) as lon
  from raw_events r
  group by r.venue_id
)
select
  v.venue_id,
  v.venue_name,
  v.lat,
  v.lon,
  coalesce(ns.now_raw, 0.0)::double precision,
  (
    -- MODEL.md §8: posterior mean, square-rooted for display (the concave
    -- utility again — applied last, not inside the estimate).
    power((hp.beta * hp.global_rate + e.s_eff) / nullif(hp.beta + e.e_eff, 0), 0.5)
    *
    -- MODEL.md §5: diversity, shrunk toward the global average with a
    -- small-sample prior (n0 = 5 party-sessions).
    power(
      (5.0 * md.avg_diversity + pv.n_party_sessions * coalesce(d.distinct_people_eff, md.avg_diversity))
        / (5.0 + pv.n_party_sessions),
      sc.delta
    )
  )::double precision,
  pv.n_party_sessions,
  ppv.distinct_people,
  -- MODEL.md §7: ~11 party-sessions needed to tell two rates apart at a 2:1
  -- ratio with reasonable confidence.
  least(pv.n_party_sessions::double precision / 11.0, 1.0),
  sc.theta::double precision
from venues v
join per_venue        pv  on pv.venue_id  = v.venue_id
join people_per_venue ppv on ppv.venue_id = v.venue_id
join effective        e   on e.venue_id   = v.venue_id
left join diversity    d   on d.venue_id   = v.venue_id
left join now_score     ns  on ns.venue_id  = v.venue_id
cross join hyperparams hp
cross join mean_diversity md
cross join scale sc;
$$;

revoke all on function public.venue_activity_score(integer, double precision, double precision, double precision, double precision) from public;
grant execute on function public.venue_activity_score(integer, double precision, double precision, double precision, double precision) to authenticated;
