#linux #gnome #popos 

The [[pop-shell|Pop! Shell]] provides smooth window tiling functionality while the Pop! Launcher provides a quick-switcher plus window walker (among other things)

As of September 2022, the shell and launcher have been decoupled and installed separately. While installation steps vary with distros, the basic gist is:
1. Install the Pop! Shell as a Gnome extension (either with a OS package manager or a `git clone` ([[gnome-extensions]]).
2. Install the Pop! Launcher. As of last update on Fedora, this required a manual clone followed by building and installing the launcher locally.

Just one more thing: Pop! Shell and Launcher might refuse to integrate (perhaps *if* you're on ZSH or another alternative shell.) This is probably due to a path issue as the default installation location of the `pop-launcher` binary build by `just build` and installed with `just install` is `~/.local/bin/pop-launcher`. Simple fix: `sudo ln -s ~/.local/bin/pop-launcher /usr/bin/pop-launcher`. This is, of course, bandaid at the moment. Reference: [pop/launcher#136](https://github.com/pop-os/launcher/issues/136).
