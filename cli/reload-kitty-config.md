---
Aliases: Reloading Kitty's Configuration through an OS Signal!
---

#terminal-emulators

[[kitty]] traditionally allows config reload through a keybinding mapped to the `load_config` cmd, but it allows for something for programmatic: an [[os-signal]]! More specifically, Kitty supports the [[SIGUSR]]-1 signal for config reloads. This can enable automation, for example from a [[vim]] [[autocmd]] [[#Vim autocmd]], a file watcher or a shell alias.

## Vim Autocmd
```vimscript
autocmd bufwritepost ~/.config/kitty/kitty.conf :silent !kill -SIGUSR1 $(pgrep kitty)
```

Reference: redd.it/rzpjed
