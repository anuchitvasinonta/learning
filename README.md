# Learning

A personal repo for learning things — languages (natural and programming),
tools, concepts, exercises. Each topic gets its own folder under `projects/`.

This repo uses the "Project Brain" pattern for giving Claude Code durable
memory across sessions: knowledge lives in git (`PROJECT_STATE.md`, decision
records, rules) instead of relying on chat history, which doesn't carry
between sessions. See `CLAUDE.md` for how the system works and what loads
automatically.

Quick start:

- `/project <name>` — start a new topic.
- Just work normally day to day.
- `/wrap` — run before ending a session. This is what makes the next session
  useful.
