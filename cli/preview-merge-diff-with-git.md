#vc/git

- For commits: `git log base-branch..HEAD`
- For diff: `git diff base-branch...HEAD` (**!!**)

> The two vs. three dots have slightly different meaning for diff than for the commands that list revisions (log, gitk etc.). For log and others two dots (`a..b`) means everything that is in `b` but not `a` and three dots (`a...b`) means everything that is in only one of `a` or `b`. But diff works with two revisions and there the simpler case represented by two dots (`a..b`) is simple difference from `a` to `b` and three dots (`a...b`) mean difference between common ancestor and `b` (`git diff $(git merge-base a b)..b`).

Source: [How can I preview a merge in git? (_StackOverflow_)](https://stackoverflow.com/questions/5817579/how-can-i-preview-a-merge-in-git)
