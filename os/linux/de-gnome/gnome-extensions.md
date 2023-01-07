# Gnome Shell Extensions
We'll document things as they stand with Gnome 40.

## Management
The primary management interface seems to be the [[gnime-extensions-gui|Gnome Extensions]] app. Prior to Gnome 40, the [[gnome-tweaks|Gnome Tweaks]] app included extensions management which was then moved to the standalone app.

## Installing Extensions
The `~/.local/share/gnome-shell/extensions` folder houses extensions. To install extensions with the CLI, clone an extension's repo to the extensions folder like:

```sh
cd ~/.local/share/gnome-shell/extensions
# install daniellandau's quick switcher
git clone https://github.com/daniellandau/switcher.git 'switcher@landau.fi'
```

> NOTE: The extension must be cloned to a folder that matches the extensions's UUID defined it its `metadata.json`.

## Configuring extensions
We fall back to the Gnome Extensions app, which exposes a configuration GUI as defined by the extension.

## Backing up Extension Configurations
Configurations are stored in the [[dconf]] database located at `~/.config/dconf/user`. To backup configurations for all extensions:

```sh
dconf dump /org/gnome/shell/extensions/ > backup.ini
```
