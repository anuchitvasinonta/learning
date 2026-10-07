#!/usr/bin/env bash
# PreToolUse hook (matcher: Bash): decision records are append-only in
# spirit (see CLAUDE.md) — this is the part of that rule that must not be
# optional. Denies commands that delete or truncate files under
# docs/decisions/, including the index. Everything else is allowed.
set -euo pipefail

INPUT=$(cat)
COMMAND=$(jq -r '.tool_input.command // ""' <<<"$INPUT")

if [[ "$COMMAND" =~ (rm|git[[:space:]]+rm|truncate|^:[[:space:]]*\>) ]] \
  && [[ "$COMMAND" == *docs/decisions* ]]; then
  jq -n '{hookSpecificOutput: {
    hookEventName: "PreToolUse",
    permissionDecision: "deny",
    permissionDecisionReason: "Decision records are append-only (see CLAUDE.md): supersede with /decide instead of deleting or truncating files under docs/decisions/. If one genuinely needs to go, ask the user to do it directly."
  }}'
  exit 0
fi

exit 0
