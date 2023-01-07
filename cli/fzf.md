---
Aliases: Fuzzy Finder
---

# FZF
#cli #interactive 

[Github](https://github.com/junegunn/fzf)

FZF is an interactive cli-based fuzzy finder. It uses _another_ shell command as its data source, usually the default command (discussed below), or a shell pipe. For instance, use `fd --type d | fzf` to search directories ennumerated by the [fd](fd.md) CLI tool.

## Search Syntax
#incomplete 

## Do Something With the Selection
Use `fzf` is a **subshell**! For example, `vim $(fzf)` to open the selection in vim.

## Shell Integration
`fzf` integrates neatly with [Bash](bash) and [ZSH](zsh.md) with key-bindings and autocompletion for special commands.
### Key-Bindings
The FZF install script adds keybindings for `bash`, `zsh` and `fish`:
- `CTRL-T`: Paste selected files, directions to command line.
- `CTRL-R`: Search through history and paste selection to command line.
- `ALT-C`: Search directories and `cd` into selection.

### [Powershell](powershell) Integration 💣

## Environment Variables
- `FZF_DEFAULT_COMMAND`: The command used as source if `fzf` is called with tty input.
- `FZF_DEFAULT_OPTS`: Default `fzf` options.

## Options
Some notables:
- `--preview=COMMAND`: Generate preview for selection. For example `--preview 'bat --style=numbers --color=always --line-range :500 {}'` uses the [bat](bat) tool to generate previews:
  ![[fzf-preview-ss.png]]

- `--height x%`: limit the height taken by the `fzf` window. `fzf --height 40%`:
  ![[fzf-preview-height-ss.png]]
