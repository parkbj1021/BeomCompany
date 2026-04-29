#!/bin/bash

REPO_DIR="$HOME/클로드코드/CSnCompany_2-0"
LOG_FILE="$HOME/.claude/plugins/marketplaces/update.log"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Checking for updates..." >> "$LOG_FILE"

cd "$REPO_DIR"
git pull origin main >> "$LOG_FILE" 2>&1
bash install.sh >> "$LOG_FILE" 2>&1

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Update complete." >> "$LOG_FILE"
