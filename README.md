# RedplanetHQ Claude Code Marketplace

A curated collection of Claude Code plugins maintained by RedplanetHQ.

## What is CORE Memory?

CORE is an open-source AI memory system that gives Claude Code and other coding agents persistent memory across all your sessions. Instead of re-explaining your codebase, architecture decisions, and coding patterns every time, CORE remembers everything.

**The Problem:** Claude Code forgets everything when you close it. Every session starts from scratch.

**The Solution:** CORE uses a temporal knowledge graph to remember:
- Your codebase architecture and patterns
- When and why you made decisions
- Context from previous conversations
- Your coding preferences and standards

**The Result:** After a few weeks, Claude Code develops deep understanding of your projects - like a living wiki that actually remembers your context.

🏆 **Proven Results:** CORE achieved 88.24% accuracy on the LoCoMo benchmark (current state-of-the-art for AI memory systems)

**Learn more:** 
- [Main Repo:RedPlanetHQ/core](https://github.com/RedPlanetHQ/core)
- [Docs](https://docs.heysol.ai)
- [Website](https://heysol.ai)


## Installation

To add this marketplace to your Claude Code installation:

```bash
/plugin marketplace add https://github.com/RedPlanetHQ/redplanethq-marketplace.git
```

After adding the marketplace, you can browse and install plugins from it.

## Available Plugins

### core-memory

**Stop re-explaining your codebase every session.** 

This plugin connects Claude Code to CORE Memory, giving it persistent memory across all your coding sessions. Claude automatically remembers your architecture, decisions, and patterns.

**How it works:**
- Automatic memory search at conversation start
- Automatic context capture after responses  
- Manual search and ingest commands available
- Session hooks for context loading

**Installation:**

```bash
/plugin install core-memory@redplanethq
```
After installing the plugin, restart claude to load the plugin

**Authentication:**

After restarting the Claude, you need to authenticate with the CORE Memory MCP server:

```bash
/mcp
```

Follow the authentication prompts to connect your CORE Memory account.

**Usage:**

The plugin automatically searches and stores memories through hooks, but you can also use manual commands:

- `/core-memory:init` - Initialize CORE memory with comprehensive project context
- `/core-memory:search` - Search CORE memory for specific information
- `/core-memory:ingest` - Manually trigger memory ingest for the current conversation

**How it works:**

1. **Session Start**: When you start a new conversation, Claude automatically searches for relevant context about your project
2. **Before Responding**: For each user message, Claude searches memory for relevant past conversations and context
3. **After Responding**: Claude automatically stores the conversation, decisions made, and key insights

## Usage

### Adding the Marketplace

```bash
/plugin marketplace add redplanethq/redplanethq-marketplace
```

### Browsing Plugins

```bash
/plugin list
```

### Installing a Plugin

```bash
/plugin install redplanethq/<plugin-name>
```

### Authenticating MCP Servers

If a plugin requires MCP server authentication (like core-memory), use:

```bash
/mcp
```

## Plugin Development

Want to contribute a plugin to this marketplace? Plugins should follow the Claude Code plugin structure:

```
plugin-name/
├── commands/        # Slash commands
├── agents/          # Specialized agents
├── hooks/           # Event hooks
└── plugin.json      # Plugin metadata
```

See the [official Claude Code documentation](https://docs.claude.com/en/docs/claude-code/plugin-marketplaces) for more details.

## Support

For issues or feature requests, please open an issue in this repository.

## License

Individual plugins may have their own licenses. Please check each plugin's directory for license information.
