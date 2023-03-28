#linux #obsidian

This is an error I and some others encounter with [[obsidian]] on [[linux]]. While the culprit would seem like `ulimit -n`, it seems it actually is `/proc/sys/fs/inotify/max_user_instances` (set to 1024 or something to mitigate, my default on [[fedora]] was 128!)

Reference: [forum.obsidian.md](https://forum.obsidian.md/t/emfile-too-many-open-files-after-upgrading-to-0-15-6/40402/8)
