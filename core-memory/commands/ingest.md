---
description: Manually trigger CORE memory ingest for the current conversation
---

# Ingest Current Conversation into CORE Memory

Use the `mcp__plugin_core-memory_core-memory__memory_ingest` tool to store the current conversation in CORE memory.

## Instructions

1. Summarize the current conversation including:
   - The user's question or request
   - Your solution or explanation
   - Important decisions made
   - Key insights discovered

2. Call the `mcp__plugin_core-memory_core-memory__memory_ingest` tool with the conversation summary

3. Optionally, if this conversation is related to a specific project or topic, retrieve the available spaces using `mcp__plugin_core-memory_core-memory__memory_get_spaces` and include the appropriate spaceId

4. Confirm to the user that the conversation has been successfully ingested into CORE memory
