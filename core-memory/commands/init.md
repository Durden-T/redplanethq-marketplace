---
description: Initialize CORE memory with comprehensive project context
---

# Initialize Project Memory

Comprehensively analyze the current project and ingest all details into CORE memory following a hierarchical information architecture.

## Memory Architecture

```
Project Foundation
├── Project Brief & Requirements
├── Technical Context & Architecture
├── User Preferences & Patterns
└── Active Work & Progress
    ├── Current Focus Areas
    ├── Recent Decisions
    ├── Next Steps
    └── Key Insights
```

## Instructions

Systematically gather and ingest information following these categories:

### 1. Project Foundation

**Analyze and document:**
- **Purpose**: Why this project exists, problems it solves
- **Requirements**: Core functionality and constraints
- **Scope**: What's included and excluded
- **Success Criteria**: How we measure progress

**Actions:**
- Check for claude.md or agents.md files for AI agent context and instructions
- Read README.md, package.json, or project manifests
- Review any project documentation or specifications
- Identify the project's mission and goals

### 2. Technical Context

**Analyze and document:**
- **Architecture**: System design and key architectural decisions
- **Technologies**: Stack, frameworks, tools, and dependencies
- **Patterns**: Design patterns and coding approaches used
- **Constraints**: Technical limitations and requirements

**Actions:**
- Scan directory structure (src, tests, config, docs, etc.)
- Review package.json, requirements.txt, or dependency files
- Identify entry points and key modules
- Check configuration files (.eslintrc, tsconfig.json, etc.)
- Review build tools and scripts

### 3. User Context

**Analyze and document:**
- **Preferences**: Communication style, technical level
- **Patterns**: How they like to work and receive information
- **Goals**: What they're trying to accomplish
- **Background**: Relevant experience and expertise

**Actions:**
- Use `mcp__plugin_core-memory_core-memory__memory_about_user` to get existing user profile
- Incorporate any user-specific context from the current interaction

### 4. Active Progress

**Analyze and document:**
- **Current Focus**: What's being worked on now
- **Recent Changes**: Latest git commits and developments
- **Next Steps**: Planned actions and priorities (from TODO, CHANGELOG, issues)
- **Insights**: Key learnings and observations from the codebase

**Actions:**
- Check git status and recent commits
- Review TODO files, issue trackers, or project boards
- Identify work in progress or recent changes
- Note any technical debt or known issues

### 5. Conversation History

**Document:**
- **Decisions Made**: Important choices and rationale from previous Claude sessions
- **Problems Solved**: Solutions and approaches used in past conversations
- **Questions Asked**: Clarifications and explorations from conversation history
- **Patterns Discovered**: Recurring themes and insights from previous work

**Actions:**
- Review previous Claude conversation history about this project
- Capture key discussions, decisions, and context from past sessions
- Document important feature discussions, bug fixes, and architectural choices
- Note patterns in how the project evolved through conversations
- Synthesize insights from the conversation flow over time

## Execution Steps

1. **Gather all information** following the categories above
2. **Structure the findings** in a clear, organized format using the hierarchical architecture
3. **Ingest using `mcp__plugin_core-memory_core-memory__memory_ingest`** with the comprehensive summary
   - Include all five categories in the ingestion
   - Space information is already present in memory and will be handled automatically
4. **Confirm success** and provide a brief overview of what was captured

## Tips

- Be thorough but concise - focus on valuable, actionable information
- Organize findings by the hierarchical categories
- Include specific file paths and line numbers for key references
- This command should be run when starting work on a new project or after significant changes
