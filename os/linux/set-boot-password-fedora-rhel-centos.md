[[fedora|Fedora]] 28+ doesn't configure a boot login on initial setup.

As a consequence, if the boot process fails for some reason and Fedora enters emergency mode, it's a deadlock with a locked `root`. Reference: [ask.fedoraproject.org](https://ask.fedoraproject.org/t/howto-cannot-open-access-to-console-the-root-account-is-locked-in-emergency-mode-dracut-emergency-shell/2010).

The solution? `chroot` into the fedora installation to set a root password. Steps:
1. Boot, when the grub screen flashes > `E` to enter the edit screen.
2. Replace `rhgb quiet` with `rd.break enforcing=0`
3. `ctrl+x` to start up a linux environment.
4. `mount -o remount,rw /sysroot` to mount the Fedora installation's root filesystem.
5. `chroot /sysroot` to chroot into the installation.
6. `passwd root` to set a root password.
7. `touch /.autorelabel`.
   > IMPORTANT: This step is important because we've booted in with SELinux uninforced to avoid a complete SELinux relabelling (apparently). Creating this file forces a relabelling anyways to ensure the new boot password we've set works.
   > There is a workaround to avoid a complete relabelling that involves restoring the SELinux content in the `etc/shadow` file on reboot. However, I've not been able to try it yet.
   > Steps:
	    - restorecon -v /etc/shadow
	    - setenforce 1
   >  Reference: [fedoramagazine.org](https://fedoramagazine.org/reset-root-password-fedora/).

