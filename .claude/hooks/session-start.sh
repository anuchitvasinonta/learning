#!/usr/bin/env bash
# SessionStart hook: inject PROJECT_STATE.md + basic git context so it
# doesn't depend on Claude choosing to read a file.
set -euo pipefail

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)}"
STATE_FILE="$PROJECT_DIR/PROJECT_STATE.md"

STATE_CONTENT="(no PROJECT_STATE.md found)"
if [[ -f "$STATE_FILE" ]]; then
  STATE_CONTENT=$(cat "$STATE_FILE")
fi

GIT_BRANCH="(not a git repo)"
GIT_STATUS="(not a git repo)"
if git -C "$PROJECT_DIR" rev-parse --git-dir >/dev/null 2>&1; then
  GIT_BRANCH=$(git -C "$PROJECT_DIR" branch --show-current 2>/dev/null || echo "(detached HEAD)")
  GIT_STATUS=$(git -C "$PROJECT_DIR" status --short 2>/dev/null)
  [[ -z "$GIT_STATUS" ]] && GIT_STATUS="(clean)"
fi

CONTEXT=$(cat <<EOF
## Project state (PROJECT_STATE.md)

$STATE_CONTENT

## Git context

Branch: $GIT_BRANCH
Status:
$GIT_STATUS
EOF
)

jq -n --arg context "$CONTEXT" \
  '{hookSpecificOutput: {hookEventName: "SessionStart", additionalContext: $context}}'
