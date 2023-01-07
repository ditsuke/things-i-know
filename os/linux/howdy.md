---
Aliases: Howdy -- Windows Hello-like Face Auth on Linux
---
# Biometric Auth on Linux with Howdy
#linux 

[GitHub](https://github.com/boltgolt/howdy) 

Howdy provides [[windows-hello|WIndows Hello]] style authentication for Linux systems. 
On a machine with an IR emitters and cameras, Howdy enables adding facial models on a per-user basis to enable auth.

## Installing
Install with a package manager that has Howdy. On [[fedora]], Howdy is available on its own [[copr]] repository `principis/howdy`

## Setup
1. Tell howdy which camera to use.
	- Find out the IR emitter with [[ffmpeg]]'s ffplay to play out devices or another way.
	- `sudo howdy config` -> `[video]` -> `device_path` = `dev/video[X]`.
2. Tell [[pam]] -- the Linux authentication module by adding to the top of `/etc/pam.d/sudo`:
   ```
   auth       sufficient   pam_python.so  /lib64/security/howdy/pam.py
   ```
   This tells PAM to use `howdy` as the first authentication system.
3. Of course, add a face model for yourself with `sudo howdy add`, entering a name for the model and letting howdy take a good look at your face.

This configures `sudo` to use howdy for auth. Lock screen? Follow the installation instructions in the copr repo: [copr.fedorinfracloud.org/coprs/principis/howdy](https://copr.fedorainfracloud.org/coprs/principis/howdy/).

Annoying messages when howdy is scanning? ^ guide for information on silencing.
