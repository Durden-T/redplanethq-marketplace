#!/bin/bash

cat <<'EOF'

IMPORTANT INSTRUCTIONS - Read before responding:

🧠 MEMORY SEARCH (Do this FIRST):
Before crafting your response, you MUST use the Task tool to invoke the core-memory:memory-search subagent:

Task tool parameters:
- subagent_type: "core-memory:memory-search"
- description: "Search memory for context"
- prompt: "Search for relevant context about: [describe the user's current request/topic]. Find previous discussions, related project context, user preferences, and similar problems we've solved before."

This memory search is MANDATORY at the start of every conversation.

💾 MEMORY STORAGE (Do this LAST):
After completing your response, you MUST use the Task tool to invoke the core-memory:memory-ingest subagent:

Task tool parameters:
- subagent_type: "core-memory:memory-ingest"
- description: "Store conversation in memory"
- prompt: "Store this conversation including: [USER] their question/request/problem and context + [ASSISTANT] the solution, explanation, reasoning, and decisions made. Exclude code snippets, focus on concepts and approaches."

This memory storage is MANDATORY at the end of every interaction.

EOF

exit 0
