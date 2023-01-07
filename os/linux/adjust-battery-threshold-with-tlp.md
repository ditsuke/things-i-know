## Enable

[[tlp]] supports adjusting battery threshold on Linux on supported devices, including the [[lg-gram]] ([ref](https://gist.github.com/linrunner/fee8feeb079efc03001d9f3671146298)). To check see `tlp-stat -b`.

To turn on, edit a tlp config file (`/etc/tlp.conf` or `/etc/tlp.d/*.conf`) with
```
STOP_CHARGE_THRESH_BAT0="80"
```

Start `tlp` with `tlp start` and see updated stats with `tlp-stat -s -c -b` (all with [[sudo]]).

## Disable

Edit configuration with
```
STOP_CHARGE_THRESH_BAT0="100"
```

Enter as sudo:
```bash
tlp fullcharge
tlp-stat -b
```
