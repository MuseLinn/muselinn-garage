#  MuseLinn's Garage

> *Tools don't build themselves. Welcome to the garage.*

A Claude Code plugin marketplace — one `claude plugin marketplace add` gets you everything.

## What's in the garage

| Tool | What it does |
|---|---|
| **deepseek-statusline** | Warm Anthropic-style statusline with git porcelain, TrueColor context bar, cost tracking |
| **plugin-dev** | Scaffold plugins, commands, agents, skills, hooks |
| **mcp-server-dev** | Build and deploy MCP servers |
| **pr-review-toolkit** | Code review, silent failure hunter, type analysis |
| **hookify** | Auto-create hooks from conversation patterns |
| **commit-commands** | `commit`, `commit-push-pr` shortcuts |
| **feature-dev** | Guided feature development workflow |

## Install

```bash
# One-time: add the garage to your marketplace list
claude plugin marketplace add MuseLinn/muselinn-garage

# Install everything
claude plugin install deepseek-statusline plugin-dev mcp-server-dev pr-review-toolkit hookify commit-commands feature-dev

# Or pick what you need
claude plugin install deepseek-statusline

# Update all tools to latest
claude plugin update
```

After installing `deepseek-statusline`, run `/deepseek-statusline:setup` to configure the statusline.

## What's "garage" about it?

A garage isn't a sterile factory. It's where you keep tools that have character, tools you tweak and tune yourself. `deepseek-statusline` lives here, maintained directly. Third-party tools from Anthropic's official marketplace are just indexed — you get upstream updates automatically.

## License

MIT for original tools. Third-party plugins retain their own licenses.
