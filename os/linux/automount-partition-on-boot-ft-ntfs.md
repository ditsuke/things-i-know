First step: get the partition's UUID: [[list-disks-with-uuids-and-labels]].
Once the UUID is out of the way, add to `/etc/fstab`:
```
# UUID=<UID>   /run/media           ntfs3    defaults 0 0
```

> IMPORTANT: Verify the `fstab` modification with: `sudo findmnt --verify`. If you get something along the lines of "ntfs not supported", either an NTFS compat layer is missing (install `ntfs-3g` ?), or the NTFS partition is unclean (maybe). Below for more

> NOTE: If `findmnt` complains about `ntfs3` not matching the on-disk `ntfs`, its likely a false-positive. Reference: [bbs.archlinux.org/...](https://bbs.archlinux.org/viewtopic.php?id=276613)

Once the `fstab` has been modified and verified, reconcile changes with `systemctl daemon-reload`, and apply without rebooting with `sudo mount --all`

## Problems
- Test mount with `sudo mount -o rw -t ntfs -U <UID> /run/media/dp`.  Get something like?
  ```
  The disk contains an unclean file system (0, 0).
  Metadata kept in Windows cache, refused to mount.
  Falling back to read-only mount because the NTFS partition is in an
  unsafe state. Please resume and shutdown Windows fully (no hibernation
  or fast restarting.)
  Could not mount read-write, trying read-only
  ntfs-3g-mount: failed to access mountpoint /run/media/dp: No such file or directory
  ```
  
  Welcome to Windows land. Steps:
	  1. Disable fast boot.
	  2. Disable hibernate (??)
	  3. Disable fast-boot from BIOS
	  4. Profit yet?
