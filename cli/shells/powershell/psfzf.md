# PSFzf: FZF Wrapper for [PowerShell](powershell)
The [PSFzf](https://github.com/kelleyma49/PSFzf) module wraps FZF to provide a PS native API. When I tried creating a mini wrapper myself, I quickly ran into an interesting behavior with `fzf` not rendering with custom a custom `--height` flag, invoked as a ScriptBlock in powershell (it was an attempt on fuzzy history search):
`{ Get-Content -Path "$((Get-PSReadLineOption).HistorySavePath)" | fzf --height 100}.Invoke()`

I did not continue my attempts to do my own wrappers once I came across PSFzf, but it would be interesting to see how its getting around this limitation (probably has something to do with terminal dimensions within a subshell used to invoke script blocks).

## Installation
PSFzf can be installed with scoop on windows or PSGallery across all platforms:
```powershell
Install-Module -Name PSFzf
```

## Usage
PSFzf provides:
```powershell
✦ ❯ Get-Command *Fuzzy*  
  
CommandType Name Version Source  
----------- ---- ------- ------  
Function Invoke-FuzzyEdit 2.5.9 PSFzf  
Function Invoke-FuzzyFasd 2.5.9 PSFzf  
Function Invoke-FuzzyGitStatus 2.5.9 PSFzf  
Function Invoke-FuzzyHistory 2.5.9 PSFzf  
Function Invoke-FuzzyKillProcess 2.5.9 PSFzf  
Function Invoke-FuzzyScoop 2.5.9 PSFzf  
Function Invoke-FuzzySetLocation 2.5.9 PSFzf  
Function Invoke-FuzzyZLocation 2.5.9 PSFzf  
Function Set-LocationFuzzyEverything 2.5.9 PSFzf
```
