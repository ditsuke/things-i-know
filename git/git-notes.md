#git 

`git notes` are just that -- "notes" associated with commits. Why do they exist? Adding information to a commit's message without changing the commit (and hence the hash) itself -- notes associated with a commit show up in the git log entry for that commit!

## Storage in the git object tree
`(.git)/refs/notes/commits/*`

## Synopsis (from the manual)
```
SYNOPSIS
       git notes [list [<object>]]
       git notes add [-f] [--allow-empty] [-F <file> | -m <msg> | (-c | -C) <object>] [<object>]
       git notes copy [-f] ( --stdin | <from-object> [<to-object>] )
       git notes append [--allow-empty] [-F <file> | -m <msg> | (-c | -C) <object>] [<object>]
       git notes edit [--allow-empty] [<object>]
       git notes show [<object>]
       git notes merge [-v | -q] [-s <strategy> ] <notes-ref>
       git notes merge --commit [-v | -q]
       git notes merge --abort [-v | -q]
       git notes remove [--ignore-missing] [--stdin] [<object>...]
       git notes prune [-n] [-v]
       git notes get-ref
```
