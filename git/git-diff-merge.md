---
Aliases: "Previewing a git merge with git-diff"
---

There are many strategies to preview a merge, the closest of them arguably being:
> **`git diff ...base_branch`**
> Diff of common ancestor of the two branches with `HEAD`.

Note that the triple-dots have a special meaning here:
> The two vs. three dots have slightly different meaning for diff than for the commands that list revisions (log, gitk etc.).
> 
> For log and others two dots (`a..b`) means everything that is in `b` but not `a` and three dots (`a...b`) means everything that is in only one of `a` or `b`.
> 
> But diff works with two revisions and there the simpler case represented by:
> - **Two dots (`a..b`) is simple difference from `a` to `b`**, and
> - **Three dots (`a...b`) mean difference between common ancestor and `b`** (`git diff $(git merge-base a b)..b`).

Reference: https://stackoverflow.com/questions/5817579/how-can-i-preview-a-merge-in-git
