# Black Screen, Active Mouse Cursor, No Windows Explorer

This was at best a bizarre problem that occurred to me on [[windows-11]]. I cannot explain why it works but disabling the `AppReadiness` windows service (from powershell or services.msc) seems to be _the_ fix.

## How

Disable the `AppReadiness` service. Reference: [reddit.com/r/windows10/...](https://www.reddit.com/r/Windows10/comments/702753/comment/dmzvptm/?utm_source=share&utm_medium=web2x&context=3)

## Accessing Apps

I was lucky to have Powertoys Run give me access to all of windows when Explorer or even Run wouldn't work, but the Task Manager (`ctrl`+`shift`+`esc`) would be the other way to spawn an app like the Terminal and then go from there.
