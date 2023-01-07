# Windows 10/11: Battery Report
The [[powercfg]] command line tool can generate comprehensive battery reports [[windows]] machines:
```powershell
powercfg /batteryreport /output {/path/to/output/report.html}
```

The report includes
- System info:
	![[battery-report-system-deets.png]]

- Installed batteries:
![[battery-report-installed-batteries.png]]

- Recent usage:
  ![[battery-report-recent-usage.png]]

- Battery usage:
  ![[battery-report-battery-usage.png]]

- Usage history:
  ![[battery-report-usage-history.png]]

- Capacity history:
  ![[battery-report-capacity-history.png]]

- Life estimates:
  ![[battery-report-estimates.png]]

