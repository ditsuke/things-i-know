# [SSH](ssh.md) Agent: Auto-retrieval of ssh secrets
## Windows
Windows 10+ comes with a pre-configured `ssh-agent` service which is disabled OOTB. To enable, do something to the affect of (getting the service up and running in one swoop):
```powershell
Get-Service ssh-agent | Set-Service -StartupType Automatic -Passthru | Start-Service
```

And of course, add the keys:
```powershell
ssh-add /path/to/private/key
# or even
ssh-add # seems to take care of keys in ~/.ssh
```

However, to get Git working through the `ssh-agent`, we need to make it aware of the Windows-bundled openssh either through a config or the `GIT_SSH` environment variable:
```powershell
$ssh_source = (Get-Command ssh).Source
$evarTarget = [System.EnvironmentVariableTarger]::User
[System.Environment]::SetzEnvironmentVariable("GIT_SSH", $ssh_source, $evarTarget)
````
