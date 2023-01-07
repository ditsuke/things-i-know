#dual-booting

Mounting a NTFS partition with the [[ntfs3]] driver fails? The same mountpoint works with the default ntfs ([[ntfs-3g]]) partition?

[[ntfsfix]]: `sudo ntfsfix -d /dev/partition-name`

Reference: [bbs.archlinux.org/...](https://bbs.archlinux.org/viewtopic.php?id=271650).
