---
description: Write the next numbered decision record and add it to the index.
disable-model-invocation: true
argument-hint: <title>
---

Title: $ARGUMENTS

1. Find the highest existing `DR-NNN` in `docs/decisions/`, use the next
   number.
2. Copy `docs/decisions/TEMPLATE.md` to
   `docs/decisions/DR-NNN-<slug-of-title>.md`.
3. Fill it in: context (what prompted this), options considered, the
   decision, consequences. Ask the user for anything you don't already
   know from this session — don't invent rationale.
4. Add one line to `docs/decisions/INDEX.md`:
   `- [DR-NNN: <title>](DR-NNN-<slug>.md) — <one-line summary>`. Use a
   plain markdown link, never `@`.
5. If this supersedes an earlier decision, note it in both records and
   update the superseded record's index line to say superseded-by.
