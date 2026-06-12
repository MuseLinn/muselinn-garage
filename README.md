![MuseLinn's Garage](banner.png)

> *Not a warehouse. A garage — just the tools you actually built or fixed yourself.*

A focused Claude Code plugin marketplace. Only plugins that benefit from being here.

## What's in the garage

| Tool | Why it's here |
|---|---|
| **deepseek-statusline** | Self-maintained. Anthropic-warm statusline for Claude Code + DeepSeek |
| **nature-skills** | Academic toolkit — search, citation, figure, paper-to-PPT, polishing, reviewer response, reader |

## What's NOT here (on purpose)

Official Anthropic plugins (plugin-dev, mcp-server-dev, pr-review-toolkit, etc.) are best installed directly from their source marketplaces. A garage marketplace adds no value for these — `claude plugin update` works the same either way, and you lose the component preview.

```bash
# Official plugins — use the source
claude plugin marketplace add anthropics/claude-plugins-official
claude plugin install plugin-dev mcp-server-dev pr-review-toolkit hookify commit-commands feature-dev

# Skills — use the source  
claude plugin marketplace add anthropics/skills
claude plugin install document-skills

# Obsidian
claude plugin marketplace add kepano/obsidian-skills
claude plugin install obsidian
```

## Install

```bash
claude plugin marketplace add MuseLinn/muselinn-garage
claude plugin install deepseek-statusline nature-skills
```

After installing `deepseek-statusline`, run `/deepseek-statusline:setup`.

## License

MIT for original tools. Third-party plugins retain their own licenses.
