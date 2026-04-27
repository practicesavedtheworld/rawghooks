#!/bin/sh
set -e
# =====================================================
# install script
#
# Purpose:
#   Installs git hooks into .git/hooks directory
#
# Compatibility:
#   POSIX sh (Linux, macOS, WSL)
#
# Usage:
#   sh install.sh commit-msg
#
# Notes:
#   - no bash extensions
#   - no external dependencies except curl
# =====================================================
HOOK_DIR=".git/hooks"
BASE_URL="https://raw.githubusercontent.com/practicesavedtheworld/rawghooks/main/hooks/posix"

HOOK_NAME="$1"

if [ -z "$HOOK_NAME" ]; then
  echo "Hook name is required"
  exit 1
fi

if [ ! -d ".git" ]; then
  echo "Not a git repository"
  exit 1
fi

mkdir -p "$HOOK_DIR"

echo "installing $HOOK_NAME hook..."

curl -fsSL "$BASE_URL/$HOOK_NAME.sh" -o "$HOOK_DIR/$HOOK_NAME"
chmod +x "$HOOK_DIR/$HOOK_NAME"

echo "✅ $HOOK_NAME hook installed"