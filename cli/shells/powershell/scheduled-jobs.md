## Scheduled Jobs
Main Commands:

```
❯ Get-Command -Module PSScheduledJob  
  
CommandType Name Version Source  
----------- ---- ------- ------  
Cmdlet Add-JobTrigger 1.1.0.0 PSScheduledJob  
Cmdlet Disable-JobTrigger 1.1.0.0 PSScheduledJob  
Cmdlet Disable-ScheduledJob 1.1.0.0 PSScheduledJob  
Cmdlet Enable-JobTrigger 1.1.0.0 PSScheduledJob  
Cmdlet Enable-ScheduledJob 1.1.0.0 PSScheduledJob  
Cmdlet Get-JobTrigger 1.1.0.0 PSScheduledJob  
Cmdlet Get-ScheduledJob 1.1.0.0 PSScheduledJob  
Cmdlet Get-ScheduledJobOption 1.1.0.0 PSScheduledJob  
Cmdlet New-JobTrigger 1.1.0.0 PSScheduledJob  
Cmdlet New-ScheduledJobOption 1.1.0.0 PSScheduledJob  
Cmdlet Register-ScheduledJob 1.1.0.0 PSScheduledJob  
Cmdlet Remove-JobTrigger 1.1.0.0 PSScheduledJob  
Cmdlet Set-JobTrigger 1.1.0.0 PSScheduledJob  
Cmdlet Set-ScheduledJob 1.1.0.0 PSScheduledJob  
Cmdlet Set-ScheduledJobOption 1.1.0.0 PSScheduledJob  
Cmdlet Unregister-ScheduledJob 1.1.0.0 PSScheduledJob
```

### Creating 
```powershell
❯ $trigger = New-JobTrigger -Once `  # Needs the Once switch for custom durations, oddly enough
∙ -RepetitionInterval (New-TimeSpan -Hours 6) `  
∙ -RepetitionDuration ([timespan]::MaxValue) `  
∙ -At (Get-Date)

❯ $options = New-ScheduledJobOption -ContinueIfGoingOnBattery -StartIfOnBattery -MultipleInstancePolicy StopExisting -RequireNetwork

❯ $action = { scoop update }

# Needs elevated shell!
❯ Register-ScheduledJob -Name "update-scoop" `  
∙ -ScriptBlock $action `  
∙ -ScheduledJobOption $options `  
∙ -Trigger $trigger `  
∙ -RunNow
```

Or, simpler:
```powershell
❯ Register-ScheduledJob -Name "update-scoop-simple" -ScriptBlock { scoop update } -RunEvery (New-TimeSpan -Hours 6) -RunNow `  
∙ -ScheduledJobOption (New-ScheduledJobOption -MultipleInstancePolicy StopExisting -RequireNetwork -ContinueIfGoingOnBattery -StartIfOnBattery)
```

### Modifying
Get and set:
```powershell
❯ Get-ScheduledJob -Name update-scoop | Set-ScheduledJob -ScriptBlock { scoop update }
```
