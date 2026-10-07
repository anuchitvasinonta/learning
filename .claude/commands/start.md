---
description: Deeper onboarding — read the decision log and open questions before starting work.
disable-model-invocation: true
---

Read the following before reporting back:

1. `docs/decisions/INDEX.md` — skim every line.
2. Any decision record from the index that looks relevant to what the user
   is about to do this session (open only those, not all of them).
3. `docs/working/open-questions.md`, if it exists.
4. `PROJECT_STATE.md` (already in context from the SessionStart hook, but
   sanity-check it against `git log -5` for anything stale).

Then report back in a few sentences: what you understand the current state
to be, which project(s) are active, and flag anything that looks stale — a
"done" item with no matching commit, an open question that's actually been
resolved, a project listed in `PROJECT_STATE.md` with no folder under
`projects/`, or vice versa.

This command is read-only reconnaissance — don't start making changes yet.
