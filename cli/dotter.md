---
Aliases: Dotter - A Dotfiles Manager
---
# Dotter: Dotfile Management

#dotfiles #cli

[GitHub](https://github.com/SuperCuber/dotter/)

Dotter is a dotfile management tool. The general flow:
- Move dotfiles to a git repo.
- Make a dotter configuration file mapping files/directories in the `dotfiles` directory to their real counterparts. Dotter offers a lot more functionality with `packages` (selectively including dotfiles) and OS/conditional includes, but I've not used them as of August 2022.
- Run `dotter` => dotter creates symlinks from the `dotfiles` directory to the locations configured in the config file(s).

Dotter happens to be the first dotfile management tool I've used, and appears to pretty simple and effective with the initial setup out of the way.
