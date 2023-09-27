# Reloading a lua script at runtime

This document is specifically in the context of [[neovim]], but to the best of my knowledge generally applicable to [[lua]] runtimes. To reload a module, for example `ditsuke.config`:
```lua
require("ditsuke.config") -- once required, this can't be "reloaded" unless
package.loaded["ditsuke.config"] = nil -- This is where runtime stores requires
require("ditsuke.config") -- Re-requiring loads it again now
```
