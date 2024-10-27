---
aliases:
  - Or how CLI apps can offload clipboard manipulation to the terminal emulator, even over SSH
---
In my curiosity to know how [[zellij]] the terminal multiplexer happens to manipulate the clipboard just fine when [[neovim]] fails – I found out about the OSC 52 terminal sequence! ([ref](https://github.com/zellij-org/zellij/issues/671#issuecomment-916044424))

Support for the terminal sequence is.. patchy to say the least, with many terminal emulators such as the [[gnome-terminal]], and some multiplexers featuring less than stellar support for the standard.

As of 2023 November 24, Neovim has also shipped support for this elusive signal. It should go a long way in reducing friction in the Neovim-over-SSH experience ([ref](https://github.com/neovim/neovim/pull/26064)).

Ref: https://seankhliao.com/blog/12020-05-14-osc-52/
