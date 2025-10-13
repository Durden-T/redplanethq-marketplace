# RedplanetHQ Claude Code Marketplace

A curated collection of Claude Code plugins maintained by RedplanetHQ.

## Installation

To add this marketplace to your Claude Code installation:

```bash
/plugin marketplace add redplanethq/redplanethq-marketplace
```

After adding the marketplace, you can browse and install plugins from it.

## Available Plugins

### core-memory

Automatic CORE memory search and ingest plugin that helps Claude Code maintain context across conversations.

**Features:**
- Automatic memory search at the start of every conversation
- Automatic memory ingestion after completing responses
- Manual search and ingest commands
- Specialized agents for memory operations
- Session start hooks for context loading

**Installation:**

```bash
/plugin install redplanethq/core-memory
```

**Authentication:**

After installing the plugin, you need to authenticate with the CORE Memory MCP server:

```bash
/mcp
```

Follow the authentication prompts to connect your CORE Memory account.

**Usage:**

The plugin automatically searches and stores memories through hooks, but you can also use manual commands:

- `/search <query>` - Search CORE memory for specific information
- `/ingest` - Manually trigger memory ingest for the current conversation

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
