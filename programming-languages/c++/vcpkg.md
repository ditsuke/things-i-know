# `vcpkg`: C++ Library Manager

#cpp 

[GitHub](https://github.com/Microsoft/vcpkg)

`vcpkg` is a C++ package manager by [[microsoft|Microsoft]].

## Installation
### Windows
- With [[scoop]]: `scoop install vcpkg`

## Searching Packages
`vcpkg search <name>`

## Installing Packages
`vcpkg install [package-name]`

Or, specific os/arch:
`vcpkg install [package-name]:<arch>:<os>` like `vcpkg install openssl:x64-windows`

Alternativelty with a flag:
`vcpkg install [package-name] --triplet <arch>:<os>`

## Making packages available user-wide
`vcpkg integrate install`

## Autocomplete
`vcpkg integrate powershell` // `vcpkg integrate bash` (or `zsh`)
