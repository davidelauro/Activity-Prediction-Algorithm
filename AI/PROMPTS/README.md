# Prompt records

Keep one Markdown record for each AI session that materially influences the project. This
practice makes the research process auditable without saving every trivial question.

## What to log

Log a session if AI substantially influenced any of the following:

- the research question, plan, model, or extension;
- a proof, lemma, counterexample, or mathematical interpretation;
- code used for a result, data processing, a figure, or a table;
- the choice or interpretation of a paper or theorem;
- substantial writeup prose or restructuring;
- a conclusion about what the results mean.

Spelling fixes and routine compiler-error explanations do not need a separate record, unless
they change the submitted content in an important way.

## File names

Use a readable name:

```text
YYYY-MM-DD-topic.md
```

For example: `2026-10-08-project-scaffolding.md`.

Copy `TEMPLATE.md` for each new record. Keep the initial prompt and the substantive follow-up
prompts close to their original wording. Routine interface messages and long raw tool output may
be omitted.

## Finish and preserve the record

Before ending a substantial AI session, complete the record. Commit it alongside the work it
influenced.

After a record is committed, treat it as append-only. Do not silently rewrite or delete the
earlier account. If you find a mistake later, add a dated correction at the bottom, or create a
new record that links to the earlier one.
