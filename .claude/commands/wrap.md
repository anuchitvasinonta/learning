---
description: End-of-session ritual — update state, capture decisions, commit. Run before ending a session.
disable-model-invocation: true
---

Do all of the following, in order:

1. **Update `PROJECT_STATE.md`.** Move finished items from "In progress" to
   "Done" (or drop if trivial), update "Current focus" and "Next", remove
   anything stale. Keep it under ~60 lines — cut rather than reorganize.

2. **Write a decision record if a real decision was made this session**
   (chose an approach, picked a tool/library, decided a tradeoff, reversed
   an earlier decision). Use `/decide`, or do it directly:
   - Copy `docs/decisions/TEMPLATE.md` to the next `DR-NNN-slug.md`.
   - Fill in context, options considered, the decision, consequences.
   - Add one line to `docs/decisions/INDEX.md` (a plain markdown link,
     never `@`).
   - If this supersedes an earlier record, say so in both — never delete
     the old one.

   Skip this step if nothing decision-worthy happened — most sessions
   won't need it.

3. **Update open questions.** If something unresolved came up that's worth
   not re-litigating later, add it to `docs/working/open-questions.md`
   (create it with a one-line header if it doesn't exist yet). Remove
   questions that got answered this session.

4. **Promote repeated corrections into a rule.** If the user corrected the
   same thing more than once this session, write a path-scoped rule under
   `.claude/rules/` (with `paths:` frontmatter) instead of relying on
   remembering it next time.

5. **Commit.** Stage only the files actually changed and commit with a
   message describing what happened this session, not "update docs."

Report back with a one-line summary of what you updated.
