# [[neovim]]: spell
## Enabling
`:set spell`
`set spelllang=en_us` Or whatever

## Using
- Goto previous/next: `[s`, `]s`
- Fix spelling from dictionary: `z=`
- Apply fix to all: first apply a fix manually with `z=`, then `:spellr` (spell repeater)

There is more: a way to add words to dictionary and a lua API to interface with the feature. `:help spell`.

Reference: https://johncodes.com/posts/2023/02-25-nvim-spell/