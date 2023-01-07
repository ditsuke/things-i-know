---
Aliases: Startup WM Class / Application ID on Linux
---
Modern Desktop Environments on Linux use the `WMClass` property to associate GUI windows with owning applications. The [[wayland]] equivalent to "Startup WM Class" is the Application ID, which serves much of the same purpose.

[[pop-shell]] uses the `application.id` or `WMClass` to apply tiling rules, and [[pop-launcher]] uses this property to associate Desktop files with windows to highlight instances of running applications as you cycle through them in the launcher list.

Reference: [What does the StartupWMClass field of a .desktop file represent?](https://askubuntu.com/questions/367396/what-does-the-startupwmclass-field-of-a-desktop-file-represent)
