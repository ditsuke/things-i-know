#package-managers #linux #sandbox
# Flatpak -- Application Manager
Flatpak is an application manager for Linux. It offers a controlled, sandboxed and reproducible (?) environment for apps to run in. The primary interface is the [[flatpak-cli|flatpak]] command-line tool along with distro-specific store integrations.

[[flathub|Flathub]] is the main flatpak repository (called a _remote_ in flatpak land)

## User Data
Flatpak-installed apps store data in `~/.var/app`, with some leaking out to the home directory and the like. [[discord]]'s' user data, for instance, is neatly confined to its Flatpak app directory. Reference: [ctrl.blog/...](https://www.ctrl.blog/entry/backup-flatpak.html)
