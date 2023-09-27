To uninstall/unintegrate appimages installed with [[appimage-launcher]], use the "lite" build of AppImage Launcher and then `./appimagelauncher-lite.. cli unintegrate <path-to-appimage>` [1]. Note that AppImageLauncher stores appimages in `~/Applications` by default. Also note that simply deleting the appimage files will not get rid of the other integration articficacts (like Desktop files and startup entries) created by AppImageLauncher, as expected.

[1]: https://unix.stackexchange.com/a/650730
