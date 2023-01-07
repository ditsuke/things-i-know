---
Aliases: Choppy Bluetooth on Linux, Bluetooth Audio/Headphones Cutting-off
---

This is probably due to a 2.4GHz WiFi connection live at the same time as the bluetooth. To fix this behavior, we configure the `iwlwifi` module to not use BT and WiFi at the same time through the `bt_coex_active` configuration. To test this out, we use the [[modprobe]] tool
1. `sudo modprobe -r iwlwifi`
2. `sudo modprobe iwlwifi bt_coex_active=N`

For permanent configuration:
```sh
echo "options iwlwifi bt_coex_active=N" >> /etc/modprobe.d/iwlwifi.conf
```

> **NOTE**
> The `N` stands for "NO", `0` is an equivalent.

**References**
- [Bluetooth headphones cutting out sporadically in 20.04](https://askubuntu.com/questions/1314677/bluetooth-headphones-cutting-out-sporadically-in-20-04)
- [Difference between bt_coex_active=N and bt_coex_active=1](https://askubuntu.com/questions/1132509/difference-between-bt-coex-active-n-and-bt-coex-active-1)
