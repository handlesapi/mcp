#!/usr/bin/env sh
# Calls one Handles API MCP tool over plain HTTP (JSON-RPC 2.0).
#   HANDLES_API_KEY=hk_live_... ./scripts/call-tool.sh handles_check_account '{"platform":"youtube","handle":"mrbeast"}'
: "${HANDLES_API_KEY:?set HANDLES_API_KEY first}"
tool="${1:?usage: call-tool.sh <tool> '<json arguments>'}"
args="${2-}"
[ -n "$args" ] || args='{}'
curl -sS https://api.handlesapi.com/mcp \
  -H "Authorization: Bearer $HANDLES_API_KEY" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json, text/event-stream" \
  -d "{\"jsonrpc\":\"2.0\",\"id\":1,\"method\":\"tools/call\",\"params\":{\"name\":\"$tool\",\"arguments\":$args}}"
echo
