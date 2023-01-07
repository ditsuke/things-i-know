#git 

Say you want to fetch the `branch-x` of a Git repository `git@github.com:someuser/somerepo` to a local ref `refs/someref`. This is how you do it:
```sh
git fetch git@github.com:someuser/somerepo branch-x:refs/someref
```

This can come in handy when you're working, for example, with the [[gh]] CLI tool and checking out Pull Requests -- these checked out PRs are not linked to any local remote that has its refs mapped to the local ref tree (for a remote `origin`, branches are mapped to `refs/remotes/origin/<branch-name`). Local refs are useful to backtrack to the state of the remote repo -- for example with a `reset --hard`.
