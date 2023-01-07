Sometimes, if the client does not have a suitable public but has too many keys to try before the password prompt, [[sshd]] can reject the connection. To disable, add the `PubkeyAuthentication=no` opt inline:
```sh
ssh -o PubkeyAuthentication=no user@host
```

This still won't work if [[sshd]] is running with password authentication disabled. Enable with the  configuration opt:
```
PasswordAuthentication yes
```
