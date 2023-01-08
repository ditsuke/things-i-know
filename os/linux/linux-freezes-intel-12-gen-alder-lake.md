As of the Linux kernel 6.0.16, Linux occasionally freezes with Alder Lake iGPUs.
These freezes can be either temporary (lasting 10-30 seconds), or be permanent requiring a hard-shutdown of the machine to recover from.

## Solutions/Workarounds

So far, we only workarounds involving [[i915]] options: either turning `enable_dc=0` or `enable_psr=0`. Both of these methods disable some power-saving features of the i915 kernel module.

To apply either of these patches, 

1. add to `/etc/modprobe.d/i915.conf`:
```conf
i915 options {{ opt_goes_here }}
```

2. Rebuild the [[initramfs]] with ([[dracut]])
```bash
sudo dracut --force
```

(it should also be possible to add `i915.{{opt}}`) to the boot flags. Refer to the Arch wiki, etc for more information.

References:
- [Intel alder Lake GPU hangs on Thinkpad P1 (gitlab.freedesktop.org)](https://gitlab.freedesktop.org/drm/intel/-/issues/6757)
- [Arch Wiki - Intel Graphics](https://wiki.archlinux.org/title/intel_graphics)
