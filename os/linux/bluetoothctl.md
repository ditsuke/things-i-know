#linux-software #cli/linux

`bluetoothctl` is a default CLI tool to control bluetooth.

```
❯ bluetoothctl --help 
bluetoothctl ver 5.68
Usage:
	bluetoothctl [--options] [commands]
Options:
	--agent 	Register agent handler: <capability>
	--endpoints 	Register Media endpoints
	--monitor 	Enable monitor output
	--timeout 	Timeout in seconds for non-interactive mode
	--version 	Display version
	--init-script 	Init script file
	--help 		Display help
Commands:
	list		List available controllers
	show		Controller information
	select		Select default controller
	devices		List available devices, with an optional property as the filter
	system-alias	Set controller alias
	reset-alias	Reset controller alias
	power		Set controller power
	pairable	Set controller pairable mode
	discoverable	Set controller discoverable mode
	discoverable-timeout	Set discoverable timeout
	agent		Enable/disable agent with given capability
	default-agent	Set agent as the default one
	advertise	Enable/disable advertising with given type
	set-alias	Set device alias
	scan		Scan for devices
	info		Device/Set information
	pair		Pair with device
	cancel-pairing	Cancel pairing with device
	trust		Trust device
	untrust		Untrust device
	block		Block device
	unblock		Unblock device
	remove		Remove device
	connect		Connect device
	disconnect	Disconnect device
```
---
The tools can be used to turn bluetooth on and off, scan for devices, list registered devices etc. Really anything that can be done with the bluetoothgui, but perhaps with more control as I had luck using it to force-scan for a pair of BT5.1 earplugs on my [[lg-gram]] with BT4.2.
