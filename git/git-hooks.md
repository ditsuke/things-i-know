[[git]] hooks are scripts placed in the `.git/hooks` folder of a git repository root.
These scirpts _hook_ onto events in the git repository described by their own names, for example the `pre-commit` hook script is run before a commit takes place. On returning with a non-0 exit code, this script haults the commit process, making it useful for pre-commit checks with linters or running tests.

Reference: [Git Book/Hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)
