#terminal-emulators/kitty 

By default, [[kitty]] maps `kitty_mod+h` (`kitty_mod` is default `ctrl-shift`) to opening the scrollback in a [[less-pager]] overlay onto the kitty window. it works very well for searching, although not incremental.

There are other approaches to search, including fuzzy searching with [[fzf]]. For example `map ctrl+f launch --type=overlay --stdin-source=@screen_scrollback /usr/local/bin/fzf --no-sort --no-mouse --exact -i --tac` maps ctrl+f to a kitty overlay.

As an even more advanced option:
[Kitty Kitten Search](https://github.com/trygveaa/kitty-kitten-search) is a [[kitty-kitten]] that adds a fuzzy-search window to the active kitty window. It looks really cool!


References: https://github.com/kovidgoyal/kitty/issues/718