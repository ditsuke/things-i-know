#package-managers #cli #linux 
# Flatpak -- The CLI Interface for [[flatpak]]
## Add a remote
Example:
```sh
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

## Install an app
```sh
flatpak install <remote> <app-id>
```

Example:
```sh
flatpak install flathub md.obsidian.Obsidian --assumeyes
```
