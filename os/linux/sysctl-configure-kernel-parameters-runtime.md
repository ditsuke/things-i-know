> sysctl  is  used  to  modify  kernel  parameters at runtime.  The parameters available are those listed under /proc/sys/.  Procfs is required for sysctl support in Linux.  You can use sysctl to both read and write sysctl data.

## How to?
- Example: `[sudo] sysctl fs.inotify.max_user_instances` returns value of the `fs...` key.
- Example: `[sudo] sysctl fs.inotify.max_user_instances=8012` writes `8012` as value of the `fs...` key.

There's also the `-w` flag which can be used if each parameter to follow is a k/v pair to write.

## How about making these changes permanent?

Write the `k=v` in `/etc/sysctl.conf`, which is by default sourced on each boot. More accurately:
> Load settings from all system configuration files. Files are read from directories in the following  list  in  given  order from top to bottom.  Once a file of a given filename is loaded, any file of the same name in subsequent directories is ignored.
>  - /etc/sysctl.d/*.conf
>  - /run/sysctl.d/*.conf
>  - /usr/local/lib/sysctl.d/*.conf
>  - /usr/lib/sysctl.d/*.conf
>  - /lib/sysctl.d/*.conf
>  - /etc/sysctl.conf

In a similar vain, the `-p` flag can be used to source any sysctl configuration file.