# ShareX: Screenshot Tool for Windows
#screenshots #screen-recording #windows 

[Website](https://getsharex.com/) | [GitHub](https://github.com/ShareX/ShareX)

Screen capture and recording tool for [[windows]]. 

## Problems
- Shortcut conflict with OneDrive -- For some reason [[onedrive-for-windows|onedrive]] takes over the Prt Sc and some other key if the Screenshots folder is not backed up. This causes a conflict with ShareX since it requires the Prt Sc key for obvious reasons. Workarounds:
	- Close/disable OneDrive.
	- Have both OneDrive and ShareX autostart, but use [[startup-delayer|Startup Delayer]] or a similar tool to make sure ShareX goes and binds with its keys first.
	- > @SebLemery right click on the OneDrive icon in your system try and go to settings. On the Auto Save tab, uncheck the "Automatically save screenshots I capture to OneDrive" checkbox. Then restart ShareX It seems that option bullies its way into controlling your screenshot keys.
	  Source: [github/sharex/sharex#1112#comment](https://github.com/ShareX/ShareX/issues/1112#issuecomment-174806110)
