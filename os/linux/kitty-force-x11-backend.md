#terminal-emulators/kitty

[[kitty]] can be forced to use [[X11]] ([[xwayland]]) while on [[wayland]] with:
- The `KITTY_DISABLE_WAYLAND=1` environment variable, or
- The `-o linux_display_server=x11` flag

> Why might I want to do this?

Some useful X11 software like [[tdrop]] doesn't nartively work with Wayland windows. To use them on Wayland the target windows must be forced on [[xwayland]].
