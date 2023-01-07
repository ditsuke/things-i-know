## PowerShell Scheduled Tasks
```
❯ Get-Command -Noun ScheduledTask  
  
CommandType Name Version Source  
----------- ---- ------- ------  
Function Disable-ScheduledTask 1.0.0.0 ScheduledTasks  
Function Enable-ScheduledTask 1.0.0.0 ScheduledTasks  
Function Export-ScheduledTask 1.0.0.0 ScheduledTasks  
Function Get-ScheduledTask 1.0.0.0 ScheduledTasks  
Function New-ScheduledTask 1.0.0.0 ScheduledTasks  
Function Register-ScheduledTask 1.0.0.0 ScheduledTasks  
Function Set-ScheduledTask 1.0.0.0 ScheduledTasks  
Function Start-ScheduledTask 1.0.0.0 ScheduledTasks  
Function Stop-ScheduledTask 1.0.0.0 ScheduledTasks  
Function Unregister-ScheduledTask 1.0.0.0 ScheduledTasks
```

### Creating
A scheduled task can be broken down into its associated action(s) (`$action`, trigger(s) `$trigger` and settings `$taskSettings`.
- Triggers:
	- Daily at given time: `$trigger = New-ScheduledTaskTrigger -Daily -At 5:50am`, or `$trigger = New-ScheduledTaskTrigger -Daily -At (Get-Date -Hour 5 -Minute 50`.
		There's a similar switch for weekly execution.
	  - Days of week, intervals: {TODO}

#incomplete