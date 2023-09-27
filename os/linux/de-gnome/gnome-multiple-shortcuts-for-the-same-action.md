While not possible through the regular shortcuts GUI as of Gnome 41 (can I open a PR?), it's possible by directly manipulating [[dconf]].

The dconf path for WM keybindings: `/org/gnome/desktop/wm/keybindings/`, add binding as an array item.

Reference: https://superuser.com/questions/409843/add-more-than-one-keyboard-shortcut-for-an-action-in-gnome