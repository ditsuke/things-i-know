Super easy, barely an inconvenience with the [[lsblk]] utility:
```sh
> lsblk -f
NAME        FSTYPE FSVER LABEL                 UUID                                 FSAVAIL FSUSE% MOUNTPOINTS
zram0                                                                                              [SWAP]
nvme0n1                                                                                            
├─nvme0n1p4 ntfs         DP                    BA30DACA30DA8D2F                                    
├─nvme0n1p8 vfat   FAT16                       9414-1ABF                             474.7M     3% /boot/efi
└─nvme0n1p9 btrfs        fedora_localhost-live 442740c3-8a11-4af6-83f3-7b4cf9cb9876   34.7G    24% /
```

Or the hard way:
```sh
> ls -la /dev/disk/by-uuid
total 0
lrwxrwxrwx. 1 root root  15 Sep 25 19:32 442740c3-8a11-4af6-83f3-7b4cf9cb9876 -> ../../nvme0n1p9
lrwxrwxrwx. 1 root root  15 Sep 25 19:32 BA30DACA30DA8D2F -> ../../nvme0n1p4

> ### now by label
> ls -la /dev/disk/by-label
lrwxrwxrwx. 1 root root  15 Sep 25 19:32 DP -> ../../nvme0n1p4
lrwxrwxrwx. 1 root root  15 Sep 25 19:32 fedora_localhost-live -> ../../nvme0n1p9

> # join :)
```
