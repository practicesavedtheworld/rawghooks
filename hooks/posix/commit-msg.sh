#!/bin/sh

MSG_FILE="$1"

# POSIX-safe read
read -r MSG < "$MSG_FILE"

# allowed types
TYPES="feat|fix|docs|chore|refactor|test|perf|ci|build|revert"

REGEX="^(${TYPES})(\\([a-zA-Z0-9._-]+\\))?: .+"

echo "$MSG" | grep -Eq "$REGEX"

if [ $? -ne 0 ]; then
  echo "❌ Invalid commit message"

  exit 1
fi

exit 0