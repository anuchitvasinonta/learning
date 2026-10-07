# Learning — Project Brain

A personal repo for learning things: languages (natural and programming),
tools, concepts, exercises. Knowledge lives in git, not chat history —
every session starts with a blank context window, so anything worth
keeping has to be committed. See the attached Project Brain reference doc
for the full rationale if you need it; this file is the operating index.

One folder per topic under `projects/`. Topics share this repo because
they share the same person, the same constraints, and the same decision
log — not because they're technically related to each other.

## Always loaded

- Current state: @PROJECT_STATE.md
- Decision index: `docs/decisions/INDEX.md` — one line per decision, read
  on demand, never imported here.
- Open questions: `docs/working/open-questions.md` — doesn't exist until
  there's a real open question; `/wrap` creates it the first time it's needed.

## Rules that apply everywhere

- Decision records in `docs/decisions/` are append-only in spirit:
  supersede, never delete or rewrite. A reversed decision is still useful
  information.
- Don't pre-create empty docs — no stub goals files, no placeholder
  subfolders for structure that doesn't exist yet. Add a file when there's
  content for it.
- Keep `PROJECT_STATE.md` under ~60 lines and this file under 200. Cut
  stale entries rather than reorganizing around them.
- A project folder not registered in `PROJECT_STATE.md` is invisible to
  every future session — nothing loads `projects/` automatically. Use
  `/project <name>` to start one; it creates the folder and registers it
  in the same step.
- A project's `log.md`, if it has one, is append-only: new dated entries at
  the top, never edit or delete past entries.

## Commands

- `/start` — fuller onboarding: reads the decision index, relevant
  records, and open questions. Skip for small tasks; the SessionStart hook
  already injects current state.
- `/project <name>` — asks scope questions, then creates the project
  folder and registers it.
- `/wrap` — end-of-session ritual: updates state, writes a decision record
  if one was actually made, updates open questions, promotes repeated
  corrections into a rule, commits. Run this before ending a session.
- `/decide <title>` — writes the next numbered decision record and adds
  its index line.

## Conventions

- Decision records use `DR-NNN` numbering (the personal-project
  convention — software projects would use `ADR-NNN`, unused here since
  this isn't a single codebase).
- No repo-wide build/test commands — each project under `projects/` may
  have its own, documented inside that project's own folder, not here.
