#!/usr/bin/env bash
set -euo pipefail

WEBHOOK_URL="${WEBHOOK_URL:-http://localhost:5678/webhook/analyze}"
LOG_FILE="${1:-test.log}"
RULES_FILE="${2:-rules.json}"
LOG_TYPE="${3:-ssh}" # Если 3-й аргумент не передан, принудительно берется 'ssh'

echo "Sending $LOG_FILE with rules $RULES_FILE (type: $LOG_TYPE)..."

curl -X POST "$WEBHOOK_URL" \
  -F "file=@${LOG_FILE}" \
  -F "rules=@${RULES_FILE}" \
  -F "type=${LOG_TYPE}"
