# Search prompts

Ten prompts, drawn from the 13 topics in `drafts/literature-search-topics.md`. Each is meant to
run on its own, not combined, for the same reason the Elicit prompts from the first round were
run one at a time. Every prompt ends with the same standing instruction: report what each source
actually shows, flag anything not personally verified, and never invent a citation.

Decided 2026-10-09: run these in a brand new chat, Claude Opus, not through this project's own
Agent tool. A fresh chat has no exposure to anything discussed in this project's main session,
which matters specifically because of the El Farol guess, a claim that came from background
knowledge, not a search, and only surfaced because of context already in that conversation. The
ready-to-paste version below bundles all ten into one message, with the citation-honesty
instructions stated once at the top instead of repeated ten times.

## Ready to paste, for a fresh chat

> I am building the literature review for a project predicting real-time venue activity from
> sparse, socially-clustered check-in data. I need you to research ten separate questions below.
> Treat each one as its own independent search, do not merge them into a single combined query,
> and report findings question by question.
>
> For every source you cite: give the actual authors, year, venue, and a DOI or stable link when
> one exists. Never invent a citation. If you are not certain a detail is correct, such as a DOI,
> page range, or exact venue, say so explicitly rather than presenting it as confirmed. A source
> you have not actually looked at in full counts only as a lead, say that plainly too.
>
> **1. Population size from a sparse sample.** What statistical models estimate the true size of
> a population at a location from a sparse, incomplete sample, where only a fraction of the true
> population is observed? Cover capture-recapture, N-mixture, and related
> abundance-under-imperfect-detection methods. For each source, state what it assumes about the
> detection process and whether that assumption holds when detection probability is constant
> across individuals or varies.
>
> **2. Correlated detection within a known social tie.** What models relax the assumption that
> each individual is detected independently, specifically for groups of people who are already
> known to be socially tied, such as friends or travel companions? I am looking for the case
> where co-present, related individuals have a correlated or shared detection outcome, not
> independent detection with identical probability.
>
> **3. The near-zero data regime.** What methods handle estimation when observed counts are very
> sparse or frequently zero, where a plain estimate would be unstable or uninformative? Cover
> shrinkage toward a prior, zero-inflated count models, and the cold-start problem specifically,
> as opposed to general sparse-sample estimation with a moderate amount of data.
>
> **4. A hard lower bound on the estimate.** What estimation methods are built to respect a
> known, deterministic lower bound on the quantity being estimated, where the raw count already
> observed cannot be exceeded downward by the final estimate? Cover truncated distributions and
> constrained or bounded estimation specifically, not general shrinkage.
>
> **5. Simulating a thinned observation process.** What methods simulate a true underlying
> process first, then simulate a thinning or sub-sampling step that produces a partial, observed
> version of it? I want this for generating synthetic data to validate an estimator, where the
> full "true" counts and the "observed" subset both need to exist and be compared.
>
> **6. Discretizing a continuous estimate for display.** What research addresses converting a
> continuous quantity into a small number of discrete categories for display to a non-technical
> audience, particularly where the category boundaries affect how the information is perceived
> or acted on? Cover ordinal binning and risk-communication-via-categories, not general
> classification.
>
> **7. Asymmetric loss for an ordinal prediction.** What loss functions or evaluation methods
> penalize overestimation and underestimation differently for an ordinal or discretized
> prediction, where one direction of error is preferred over the other? Quantile-style loss is a
> strong candidate; confirm whether it or a close relative is the standard tool here, and what
> alternatives exist.
>
> **8. Public predictions that influence the behaviour they predict.** What research addresses a
> public prediction or forecast that changes the real-world outcome it is trying to predict,
> specifically where different people react in opposite directions, some seeking out what the
> prediction shows as busy or popular, others avoiding it? Check whether this connects to the El
> Farol Bar problem, minority games, or congestion games specifically, since that connection is
> currently an unverified guess, not a confirmed one, and needs an actual source behind it or
> should be dropped.
>
> **9. Spatial substitution between nearby destinations.** What models describe people choosing
> between nearby, competing destinations, where the crowding or attractiveness of one location
> affects whether people instead go to a nearby alternative? Cover spatial interaction and
> destination-choice models, and migration models if they share the same structure, specifically
> the case of choice between close substitutes, not long-distance migration in general.
>
> **10. Defining group co-presence from check-in data.** What prior work defines a "group" or a
> "shared outing" from location check-in data, specifically the choice of time window for
> treating two check-ins as the same event, and the choice of which social-graph relationship,
> such as mutual following specifically versus one-directional following, counts as a qualifying
> tie?

The numbered sections below restate the same ten questions on their own, for reference when
discussing one individually; the block above is the one meant for pasting as a whole.

## 1. Population size from a sparse sample

What statistical models estimate the true size of a population at a location from a sparse,
incomplete sample, where only a fraction of the true population is observed? Cover
capture-recapture, N-mixture, and related abundance-under-imperfect-detection methods. For each
source, state what it assumes about the detection process and whether that assumption holds when
detection probability is constant across individuals or varies.

## 2. Correlated detection within a known social tie

What models relax the assumption that each individual is detected independently, specifically
for groups of people who are already known to be socially tied, such as friends or travel
companions? I am looking for the case where co-present, related individuals have a correlated or
shared detection outcome, not independent detection with identical probability.

## 3. The near-zero data regime

What methods handle estimation when observed counts are very sparse or frequently zero, where a
plain estimate would be unstable or uninformative? Cover shrinkage toward a prior, zero-inflated
count models, and the cold-start problem specifically, as opposed to general sparse-sample
estimation with a moderate amount of data.

## 4. A hard lower bound on the estimate

What estimation methods are built to respect a known, deterministic lower bound on the quantity
being estimated, where the raw count already observed cannot be exceeded downward by the final
estimate? Cover truncated distributions and constrained or bounded estimation specifically, not
general shrinkage.

## 5. Simulating a thinned observation process

What methods simulate a true underlying process first, then simulate a thinning or sub-sampling
step that produces a partial, observed version of it? I want this for generating synthetic data
to validate an estimator, where the full "true" counts and the "observed" subset both need to
exist and be compared.

## 6. Discretizing a continuous estimate for display

What research addresses converting a continuous quantity into a small number of discrete
categories for display to a non-technical audience, particularly where the category boundaries
affect how the information is perceived or acted on? Cover ordinal binning and
risk-communication-via-categories, not general classification.

## 7. Asymmetric loss for an ordinal prediction

What loss functions or evaluation methods penalize overestimation and underestimation
differently for an ordinal or discretized prediction, where one direction of error is preferred
over the other? Quantile-style loss is a strong candidate; confirm whether it or a close relative
is the standard tool here, and what alternatives exist.

## 8. Public predictions that influence the behaviour they predict

What research addresses a public prediction or forecast that changes the real-world outcome it
is trying to predict, specifically where different people react in opposite directions, some
seeking out what the prediction shows as busy or popular, others avoiding it? Check whether this
connects to the El Farol Bar problem, minority games, or congestion games specifically, since
that connection is currently an unverified guess, not a confirmed one, and needs an actual source
behind it or should be dropped.

## 9. Spatial substitution between nearby destinations

What models describe people choosing between nearby, competing destinations, where the crowding
or attractiveness of one location affects whether people instead go to a nearby alternative?
Cover spatial interaction and destination-choice models, and migration models if they share the
same structure, specifically the case of choice between close substitutes, not long-distance
migration in general.

## 10. Defining group co-presence from check-in data

What prior work defines a "group" or a "shared outing" from location check-in data, specifically
the choice of time window for treating two check-ins as the same event, and the choice of which
social-graph relationship, such as mutual following specifically versus one-directional
following, counts as a qualifying tie?
