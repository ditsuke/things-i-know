#incomplete 

`update-alternatives` is a tool to manage alternatives for a class of application.

> How does it work?

It creates symbolic links for application 

## Usage

### Add a Symbolic Link

Create symlink `/path/to/symlink` with application group/command name `command_name` with an optional `/path/to/binary` serving as the "alternative". If no binary path is passed it defaults to the binary associated with the highest pref (I guess)

`sudo update-alternatives --install path/to/symlink command_name path/to/command_binary priy`

Example: `sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $(which kitty)`

### Configure symbolic link

Select binary associated with command with:
`sudo update-alternatives --config command_name`

Example:
`sudo update-alternatives --config x-terminal-emulator`, then select the binary to associate with the command.
