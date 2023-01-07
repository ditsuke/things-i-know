# Scheduling Stuff With Powershell
#powershell #cli #windows #task-scheduler

Powershell exposes 2 scheduling APIs (at least on Windows): [[scheduled-tasks|Scheduled Tasks]] and [[scheduled-jobs|Scheduled Jobs]]. The former, Scheduled Tasks, is an interface to the native Windows [Task Scheduler](Windows Task Scheduler), but Scheduled Jobs are a powershell native construct providing access to richer functionality. Scheduled Jobs are possibly cross-platform but I'm yet to try them out on PowerShell Core on another platform.
