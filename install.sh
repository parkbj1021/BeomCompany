#!/bin/bash

# BeomCompany Installer for Claude Code
# Automatically installs to ~/.claude/plugins/marketplaces/

set -e

PLUGIN_NAME="BeomCompany"
REPO_URL="https://github.com/parkbj1021/BeomCompany"
INSTALL_DIR="$HOME/.claude/plugins/marketplaces/$PLUGIN_NAME"

echo "Installing BeomCompany for Claude Code..."

# Create marketplaces directory if it doesn't exist
mkdir -p "$HOME/.claude/plugins/marketplaces"

# Check if already installed
if [ -d "$INSTALL_DIR" ]; then
    echo "BeomCompany already installed. Updating..."
    cd "$INSTALL_DIR"
    git pull origin main
    echo "Updated successfully!"
else
    echo "Cloning repository..."
    git clone "$REPO_URL" "$INSTALL_DIR"
    echo "Installed successfully!"
fi

echo ""
echo "Installation complete!"
echo "Location: $INSTALL_DIR"
echo ""
echo "Please restart Claude Code to load the new plugins."
echo ""
echo "Available team members:"
echo "  - beom-ceo              : CEO / orchestrator"
echo "  - beom-clarify          : PM / requirements elicitation"
echo "  - beom-plan             : Architect (TDD + Clean Architecture)"
echo "  - beom-design           : Designer (5-agent design review)"
echo "  - beom-test             : QA engineer (14-agent web testing)"
echo "  - beom-codebase-review  : Code reviewer (5-agent parallel review)"
echo "  - beom-ship             : DevOps (pre-PR validation gate)"
echo "  - beom-smart-run        : Team lead (Opus plan + Sonnet parallel execution)"
echo "  - beom-experiencing     : Knowledge keeper"
echo "  - convo-maker           : Language coach"
