# Disabling [[selinux]]

> Why?

It's a security measure, which means it does things that can prevent behavior _expected_ of some other software (like [[docker]]).

## Permanently

In `/etc/selinux/config`:
```conf
SELINUX=disabled
```
This should be a `s/SELINUX=enforcing/SELINUX=disabled` operation

## Dynamically

```sh
sudo setenforce 0 # Disables SELinux dynamically
```
