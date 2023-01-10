---
Aliases: Determine if there are uncommitted changes in a Git repository
---
#git

In automation scenarios (scripts/CI), it is often useful to determine if there is a non-0 `git diff` to check for uncommitted changes for example.

A simple method to check the diff size is combining the `--porcelain` [[git]]-status flag with the [[wc]] command-line utility:

`git status --porcelain=v1 2>/dev/null | wc -l >`

Reference: [How do I programmatically determine if there are uncommitted changes?](https://stackoverflow.com/questions/3878624/how-do-i-programmatically-determine-if-there-are-uncommitted-changes)
