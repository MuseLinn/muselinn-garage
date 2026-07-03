![MuseLinn's Garage](banner.png)

> *Not a warehouse. A garage — just the tools you actually built or fixed yourself.*

A focused Claude Code plugin marketplace. Only plugins that benefit from being here.

## What's in the garage

| Tool | Why it's here |
|---|---|
| **claude-code-statusline** | Multi-provider statusline for Claude Code — DeepSeek, opencode go, Anthropic |
| **gpt-image-2** | GPT Image 2 — generate, edit, compose images via OpenAI-compatible API |
| **patent-disclosure-skill** | 中国专利挖掘与交底书全流程 — 扫描→分析→查新→MD+Word 交底书 |
| **muselinn-toolkit** | Claude Code environment check — audit plugins/skills/config, sync garage |
| **kimi-vision-mcp** | Kimi-powered vision MCP — image, OCR, UI→code, diagram, data viz, error, video |
| **literature-survey-agent-swarm** | Multi-agent literature survey pipeline — 6 subagents, Workflow, quality scoring |
| **image-extender-plugin** | Image outpainting — expand canvas + Poisson blend with gpt-image-2 |

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
claude plugin install claude-code-statusline gpt-image-2 patent-disclosure-skill muselinn-toolkit kimi-vision-mcp literature-survey-agent-swarm image-extender-plugin
```

After installing `claude-code-statusline`, run `/setup` or `/configure`.

## Update

Garage plugins use git submodules pinned to specific commits. A plain `git pull` won't update them.

To pull the latest plugin versions:

```bash
# Option A: run the update script (recommended)
bash garage-update.sh

# Option B: manual
git pull                                    # latest marketplace repo
git submodule update --init --recursive     # checkout newest plugin commits
```

Then tell Claude Code to reload the plugins:

```bash
claude plugin update claude-code-statusline
claude plugin update gpt-image-2
# ... repeat for each installed garage plugin
```

Or just reinstall all at once:

```bash
claude plugin install claude-code-statusline gpt-image-2 patent-disclosure-skill muselinn-toolkit kimi-vision-mcp literature-survey-agent-swarm image-extender-plugin
```

## License

MIT for original tools. Third-party plugins retain their own licenses.
