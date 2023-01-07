# Powercfg
[[windows|Windows]] command-line tool that provides power-related functionality including generation of [[battery-report|battery reports]], managing power modes (query, import, export etc), querying supported sleep states and more

## Help
<details>
<summary> `> powercfg /help` </summary>

```
POWERCFG /COMMAND [ARGUMENTS]  
  
Description:  
Enables users to control power settings on a local system.  
  
For detailed command and option information, run "POWERCFG /? <COMMAND>"  
  
Command List:  
/LIST, /L Lists all power schemes.  
  
/QUERY, /Q Displays the contents of a power scheme.  
  
/CHANGE, /X Modifies a setting value in the current power scheme.  
  
/CHANGENAME Modifies the name and description of a power scheme.  
  
/DUPLICATESCHEME Duplicates a power scheme.  
  
/DELETE, /D Deletes a power scheme.  
  
/DELETESETTING Deletes a power setting.  
  
/SETACTIVE, /S Makes a power scheme active on the system.  
  
/GETACTIVESCHEME Retrieves the currently active power scheme.  
  
/SETACVALUEINDEX Sets the value associated with a power setting  
while the system is powered by AC power.  
  
/SETDCVALUEINDEX Sets the value associated with a power setting  
while the system is powered by DC power.  
  
/IMPORT Imports all power settings from a file.  
  
/EXPORT Exports a power scheme to a file.  
  
/ALIASES Displays all aliases and their corresponding GUIDs.  
  
/GETSECURITYDESCRIPTOR  
Gets a security descriptor associated with a specified  
power setting, power scheme, or action.  
  
/SETSECURITYDESCRIPTOR  
Sets a security descriptor associated with a  
power setting, power scheme, or action.  
  
/HIBERNATE, /H Enables and disables the hibernate feature.  
  
/AVAILABLESLEEPSTATES, /A  
Reports the sleep states available on the system.  
  
/DEVICEQUERY Returns a list of devices that meet specified criteria.  
  
/DEVICEENABLEWAKE Enables a device to wake the system from a sleep state.  
  
/DEVICEDISABLEWAKE Disables a device from waking the system from a sleep  
state.  
  
/LASTWAKE Reports information about what woke the system from the  
last sleep transition.  
  
/WAKETIMERS Enumerates active wake timers.  
  
/REQUESTS Enumerates application and driver Power Requests.  
  
/REQUESTSOVERRIDE Sets a Power Request override for a particular Process,  
Service, or Driver.  
  
/ENERGY Analyzes the system for common energy-efficiency and  
battery life problems.  
  
/BATTERYREPORT Generates a report of battery usage.  
  
/SLEEPSTUDY Generates a diagnostic system power transition report.  
  
/SRUMUTIL Dumps Energy Estimation data from System Resource Usage  
Monitor (SRUM).  
  
/SYSTEMSLEEPDIAGNOSTICS  
The system sleep diagnostics report has been deprecated and  
replaced with the system power report. Please use the command  
"powercfg /systempowerreport" instead.  
  
/SYSTEMPOWERREPORT Generates a diagnostic system power transition report.  
  
/POWERTHROTTLING Control power throttling for an application.  
  
/PROVISIONINGXML, /PXML Generate an XML file containing power setting overrides.
```
</details>

## Query Power Modes
```ps
❯ powercfg /l  
  
Existing Power Schemes (* Active)  
-----------------------------------  
Power Scheme GUID: 381b4222-f694-41f0-9685-ff5bb260df2e (Balanced) *  
Power Scheme GUID: 76111c78-8a86-47e1-b329-24f40b894acc (Saver)
```

## Query Sleep States
```ps
❯ powercfg /a  
The following sleep states are available on this system:  
Standby (S0 Low Power Idle) Network Connected  
Hibernate  
Fast Startup  
  
The following sleep states are not available on this system:  
Standby (S1)  
The system firmware does not support this standby state.  
This standby state is disabled when S0 low power idle is supported.  
  
Standby (S2)  
The system firmware does not support this standby state.  
This standby state is disabled when S0 low power idle is supported.  
  
Standby (S3)  
This standby state is disabled when S0 low power idle is supported.  
  
Hybrid Sleep  
Standby (S3) is not available.  
The hypervisor does not support this standby state.
```

And much more to go.