# rawghooks

A minimal, zero-dependency git hooks installer delivered via raw GitHub URLs.
For those who do not want to pull complex dependencies into their project or environment, like husky, lefthook, ...
It will be used as a list of quick scripts for integration into the project.
## Overview

`rawghooks` provides simple, POSIX-compliant Git hooks that can be installed directly into any repository using a single `curl` command.

No Node.js, no Python, no frameworks — just shell scripts.

## Installation

### Install a hook

Currently, there is only one hook. There could be more.

```bash
curl -fsSL https://raw.githubusercontent.com/practicesavedtheworld/rawghooks/main/hooks/posix/commit-msg.sh \
  -o .git/hooks/commit-msg
```
A hook is used for cleaner commits.

## Licence
MIT