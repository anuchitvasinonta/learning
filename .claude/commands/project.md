---
description: Start a new learning project/topic — asks scope questions, then creates the folder and registers it.
disable-model-invocation: true
argument-hint: <name>
---

Starting a project named: $ARGUMENTS

Before creating anything, ask the user (don't assume):

- What is this project/topic? (a language, a specific skill, a kata set, a
  book being worked through, etc.)
- What does "done" or "good progress" look like, roughly?
- Does it need a running `log.md` (dated entries, newest first,
  append-only), or is that overkill for this one?

Once answered:

1. Create `projects/$ARGUMENTS/` with only what's needed now — a
   `README.md` stating the scope in a few lines, and `log.md` only if the
   user wants one. Don't scaffold empty subfolders or placeholder files for
   structure that doesn't exist yet.
2. Add one line for it under the **Projects** section of
   `PROJECT_STATE.md` (name, one-line scope, status). A project not
   registered there is invisible to every future session.
3. Commit the new files and the updated `PROJECT_STATE.md` with a message
   like "Start project: $ARGUMENTS".
