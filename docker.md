# Docker: Easy Linux Containers

## Setup on Linux
Documents steps on fedora, should generally hold for any distro.
1. Install `docker`  (and optionally, `docker-compose`).
2. Create the `docker` usergroup: `sudo groupadd docker`
3. Add current user to usergroup: `sudo usermod -aG docker $USER`
4. Try to fire up the docker service: `sudo systemctl start docker`

If the docker deamon still refuses to work with an error along the lines of:

>     failed to start daemon: Error initializing network controller: error obtaining controller instance: failed to create NAT chain DOCKER: Could not create nat/DOCKER chain: ERROR: ld.so: object '/usr/local/lib64/libinput-config.so' from /etc/ld.so.preload cannot be preloaded (cannot open shared object file): ignored.

The OS is not using the standard firewall ([[iptables]]) expected by docker (note this is the order of things as of September 2022). To make things work, migrate things for the firewall in use. For example with [[firewalld]], used by Fedora 36 by default:
`sudo firewall-cmd --zone=docker --change-interface=docker0`
Should suffice. To follow up, reload the firewal for instant effect: `sudo firewall-cmd --reload`.

> ! NOTE: [[libinput-config]]'s preload directive for a shared object file might interfere with the docker daemon. The error documented above ^^ is in fact because of the libinput-config SO. Tracking issue on Gitlab: [warningnonpotablewater/libinput-config#18](https://gitlab.com/warningnonpotablewater/libinput-config/-/issues/18)

