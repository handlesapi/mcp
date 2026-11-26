# Contributing to the Handles API MCP setup

This repository holds client configuration, the tool list and helper scripts for the hosted [Handles API MCP server](https://handlesapi.com/docs/mcp). The server itself is not in this repository.

## Good contributions

- A configuration for another MCP client that works with `https://api.handlesapi.com/mcp` and a bearer header. Tell us which client version you tested.
- A fix when a config stops working because a client changed its format.
- Corrections to the tool table or `tools.json` when the server's tools change.

## Before you open a pull request

- Keys go in environment variables or the client's secret prompt, never in a file in the repo.
- Test the config against the live server with your own key (`./scripts/list-tools.sh` should print the tools).
- Add a line to `CHANGELOG.md` under Unreleased.

Bugs and ideas go in [issues](https://github.com/handlesapi/mcp/issues). For account or billing questions, email support@handlesapi.com.
