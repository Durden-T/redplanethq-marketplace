---
description: Search CORE memory for specific information
---

# Search CORE Memory

Search through stored memories to find relevant past conversations, user preferences, project context, and decisions.

## Instructions

1. If the user provided a search query as an argument to this command, use it. The query will be: `{arg1} {arg2} {arg3} {arg4} {arg5}`

2. If no query was provided, ask the user what they would like to search for

3. Use the `mcp__plugin_core-memory_core-memory__memory_search` tool with the search query

4. Present the search results to the user in a clear, organized format showing:
   - Relevant episodes (past conversations)
   - Relevant facts (extracted knowledge)
   - When the information was created/last updated

5. If you want to search within specific spaces/projects, first use `mcp__plugin_core-memory_core-memory__memory_get_spaces` to see available spaces

## Example Usage

- `/search authentication bugs`
- `/search user preferences for code style`
- `/search previous API setup steps`
