---
Aliases: Tune Scrolling Speed/Factor on Linux under Wayland
---
As of September 2022, neither the [[libinput-cli]] nor the [[gnome]] DE expose [[libinput]]'s native `scroll-factor` setting. This is where [[libinput-config]] comes in to provide a configuration interface. Once you have `libinput-config` installed, adjust the `scroll-factor` configuration in `/etc/libinput.conf` to a suitable factor and restart the [[wayland]] session by logging out of Gnome and in again.

As an example, my `/etc/libinput.conf` with an optimal `scroll-factor` for Gnome Shell 42.5 with `libinput` 1.12.0:
```conf
scroll-factor=0.2
```
