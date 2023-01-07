On Gnome (and Fedora by extension), the `ctrl+shift+u` shortkey is bound to "unicode point input" by default. There are 2 steps to disable this as of Fedora 37 (possibly varies in Ubuntu etc):
1. Use [[ibus]] as the GTK input method module by setting `GTK_IM_MODULE=ibus` in `~/.xprofile` or `/etc/profile` // `/etc/profile.d/<whatever`.
2. Disable the shortkey in `ibus-setup` (in Fedora 37 it needs to be opened through the command line, lack of a Desktop entry I suppose).

**NOTE:** Even with all these changes applied, not all applications obey the configuration for some reason. The sureshot solutions appears to be uninstalling ibus altogether.

Reference: [Disabling “unicode code point” keystroke (ctrl+shift+u) on Fedora 35](https://ask.fedoraproject.org/t/disabling-unicode-code-point-keystroke-ctrl-shift-u-on-fedora-35/20475)
