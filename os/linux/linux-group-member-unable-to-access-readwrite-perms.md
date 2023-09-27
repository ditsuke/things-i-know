Apparently, group membership is read on login: https://unix.stackexchange.com/questions/29545/group-member-cannot-write-even-with-write-permission

Luckily, there is yet a way out! Re-read membership with:
```
su - $USER
```

Ref: https://superuser.com/questions/272061/reload-a-linux-users-group-assignments-without-logging-out
