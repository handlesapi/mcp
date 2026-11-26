#!/usr/bin/env sh
# Lists the tools the server exposes. Free: it spends no credits.
: "${HANDLES_API_KEY:?set HANDLES_API_KEY first}"
curl -sS https://api.handlesapi.com/mcp \
  -H "Authorization: Bearer $HANDLES_API_KEY" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json, text/event-stream" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/list"}'
echo
