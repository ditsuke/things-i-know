---
Aliases: Powershell Keybindings, Powershell Readline
---
# Custom Key Bindings for [Powershell](powershell)
Official Reference: [Docs/PowerShell/Scripting/Reference/PSReadLine](https://docs.microsoft.com/en-us/powershell/module/psreadline/get-psreadlinekeyhandler?view=powershell-7.2)
## Get Existing Key Bindings
To ennumerate all handlers, bound to a shortcut or not:
```powershell
Get-PsReadLineKeyHandler -Bound -Unbound
```

Only bound:
```powershell
Get-PSReadLineKeyHandler -Bound
```

Only unbound:
```powershell
Get-PSReadLineKeyHandler -Unbound
```

## Custom Bindings
PSReadLine allows binding functions and scriptblocks to either isolated keys, or to _chords_ (key-combos). The keys and chords need to follow character literals or well-known key names from the **System.ConsoleKey** enumeration. However, character literals are fallible, demonstrable with the `Ctrl+[` chord definition which doesn't work.
### Identifying the keys your binding needs
The `System.Console::ReadKey()` function makes it possible to identify PowerShell's interpretation of keys. For example with the `Ctrl+[` chord:
```powershell
❯ [System.Console]::ReadKey()  
  
  
eyChar Key Modifiers  
------- --- ---------  
em4 Control
```

This still doesn't work, presumably because a column of characters was cut out from the output. _Presumably_ because of a powershell bug. Anyways with just `[`:
```powershell
❯ [System.Console]::ReadKey()  
[  
KeyChar Key Modifiers  
------- --- ---------  
[ Oem4 0
```

Which lets us identify that powershell interprets `[` as `Oem4` (don't ask me why).

### Defining your binding
Once we've identified the keys, `Set-PSReadLineHandler` lets us set handlers to keys. For example, to use `Ctrl+[` to enter the Vi command mode (another PSReadLine feature):
```powershell
Set-PSReadLineHandler -Chord "Ctrl+Oem4" -Function ViCommandMode
```

Or, to map to a key:
```powershell
Set-PSReadLineHandler -Key UpArrow -Function HistorySearchBackwards
```