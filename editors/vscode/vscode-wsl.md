# VSCode on [[wsl]]

Opening a `wsl` workspace/folder in VSCode is as simple as `code .` from WSL, but not before the **Remote Development** extension pack is installed:
```sh
# install the remote development extension pack on vscode
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
```

The next time (or the first time) you do `code .` from a new WSL distro, vscode will install a server component within the distro like so:
```
➜ risingwave git:(main) code .  
Installing VS Code Server for x64 (74b1f979648cc44d385a2286793c226e611f59e7)  
Downloading: 100%  
Unpacking: 100%  
Unpacked 2424 files and folders to /home/d2k_u/.vscode-server/bin/74b1f979648cc44d385a2286793c226e611f59e7.
➜ risingwave git:(main)
```
