---
Aliases: Processes on Linux Unexpectedly Dying
---
#oomd

Processes dying on a Fedora/linux installation in moments of high RAM/SWAP usage? [[oomd]] -- The out-of-memory daemon might be to blame.

[[systemd-oomd]] is a service found on modern distros including [[ubuntu]]. This daemon kills processes matching some criteria in the configuration to free up memory.

As of October 2022, `systemd-oomd` agressively and ruthlessly kills even the Desktop Environment (Gnome, for example), kicking the user out of a running session and butchering all running processes.

Some references:
	- [**Bug 1941170** - Systemd-oomd very aggressive in killing apps -- bugzilla.redhat](https://bugzilla.redhat.com/show_bug.cgi?id=1941170)
	- [How do I disable the systemd OOM process killer in Ubuntu 22.04? - AskUbuntu](https://askubuntu.com/questions/1404888/how-do-i-disable-the-systemd-oom-process-killer-in-ubuntu-22-04)

## Solutions and workarounds
- The first, and recommended way to *fix* a frequently affected system is increasing swap space.
- Second, and unfortunate way is to disable the `systemd-oomd` service altogether with `systemctl mask systemd-oomd`.
