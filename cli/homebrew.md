---
Aliases: brew
---

#package-managers #linux #macos 

# Homebrew: The Missing Painless Package Manager for Linux and MacOS
[brew.sh](https://brew.sh/) | [GitHub](https://github.com/Homebrew/brew)

Homebrew is a fast and painless package manager for unix systems. It can work without root, just like [[scoop]] on [[windows]]!

## Installation
[brew.sh](https://brew.sh) for latest install instructions.

```bash
# might be outdated, ;)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Setup on Linux

```sh
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bash_profile
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.profile
```
