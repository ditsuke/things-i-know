#vim 

Opened a file as non-su but want to save?
`:w !sudo tee %`

> But how does it work?
1. `:w` writes the contents of the buffer, by default to the currently opened file. By itself it wouldn't work without write privileges for obvious reasons.
2. `!` executes a command in the shell. Here, we use [[tee]] to redirect process stdin to a file.
3. `%` means the "current file", performs a substitution for the file name best I understand.

## Can I bake it into my `vim` config?
Why of course, credits to the StackOverflow reference below, add to [[vimrc]]:
```vimscript
" Allow saving of files as sudo when I forgot to start vim using sudo.
" Invoke with `:w!!`
cmap w!! w !sudo tee > /dev/null %
```

References: [StackOverflow](https://stackoverflow.com/a/7078429)
