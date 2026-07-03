#!/bin/bash
# ============================================================================
# MuseLinn's Garage — Full Update
# Pulls latest marketplace repo + all plugin submodules to latest remote HEAD.
# Run this after `claude plugin marketplace add MuseLinn/muselinn-garage`
# or whenever you want to freshen all garage plugins.
# ============================================================================
set -e

GARAGE="$(cd "$(dirname "$0")" && pwd)"
cd "$GARAGE"

echo "⟳ Updating garage repo..."
git pull

echo ""
echo "⟳ Updating all plugins to latest..."
git submodule update --init --recursive --remote --merge --force

echo ""
echo "✅ Garage is up to date."
echo ""
echo "Next step — update plugins in Claude Code:"
echo "  claude plugin update claude-code-statusline"
echo "  claude plugin update gpt-image-2"
echo "  claude plugin update muselinn-toolkit"
echo "  # ... (or update each one you use)"
echo ""
echo "Or reinstall all:"
echo "  claude plugin install claude-code-statusline gpt-image-2 patent-disclosure-skill muselinn-toolkit kimi-vision-mcp literature-survey-agent-swarm image-extender-plugin"
