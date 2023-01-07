Prefer swap partitions:
> all the normal distributions set things up with swap partitions, not files, because honestly, swapfiles tend to be slower and have various other complexity issues
> - Linus Torvalds


But here's how to do swapfiles:
1. Create the file to be used as swap. This can be either a complete [[linuxswap]] partition or a blank file. Allocate with [[fallocate]], [[dd]] or [[cat]].
   Ideally this file should just be `/swapfile`.
2. Change owner ([[chown]]) or create as root.
3. Modify permissions to allow access to only root `sudo chmod 600 /path/to/swapfile`.
4. Use [[mkswap]] to turn it into a swap file.
5. `sudo swapon /swapfile` for one-time swap use.
6. To make permanent, add to `/etc/fstab`:  `/path/to/swapfile swap swap defaults 0 0`.

**Note:** To make this work on [[btrfs]] filesystems, the file must have copy-on-write and compression disabled. All taken care of by `chattr +C /path/to/swapfile` (adds the no-copy-on-write attribute to the file).

*References*
1. [Swap#Swap_file | Arch Linux Wiki](https://wiki.archlinux.org/title/swap#Swap_file)
2. [Swapon failed: Invalid argument on a Linux system with Btrfs filesystem](https://superuser.com/questions/539287/swapon-failed-invalid-argument-on-a-linux-system-with-btrfs-filesystem)
