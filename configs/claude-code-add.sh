#!/usr/bin/env sh
# Adds the Handles API MCP server to Claude Code. Needs HANDLES_API_KEY in your environment.
claude mcp add --transport http handles https://api.handlesapi.com/mcp \
  --header "Authorization: Bearer ${HANDLES_API_KEY:?set HANDLES_API_KEY first}"
