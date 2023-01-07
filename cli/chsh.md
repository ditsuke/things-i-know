# `chsh`: Change Login Shell
The `chsh` command changes the user login shell, coming by default in [[ubuntu]] and [[arch]]. See [[change-default-shell]] for more.
The Ubuntu and Arch versions might be divergent, though, and not support the same flags. For example as of September 2022, the arch `chsh` supports `chsh --list-shells` to list valid shells. In Ubuntu the equivalent would be cat-ing shells file `cat /usr/bin/shell`

## Usage
`chsh -s /path/to/shell`

Or to change for root:
`chsh -R -s /path/to/shell # needs confirming!!
