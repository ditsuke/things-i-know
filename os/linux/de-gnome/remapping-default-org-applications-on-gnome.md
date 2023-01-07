The [[gnome]] Desktop Environment gives special convenience names to applications for a consistent and integrated experience. This means that applications like [[nautilus]] or [[gnome-terminal]] appear simply as "Files" or "Terminal".

> What if I want to replace the default with an alternative like the [[kitty]] terminal emulator, with the same convenience names?

It's simple really, edit the original [[desktop-entry-file]] to point to the alternative, either directly or indirectly with a tool like [[update-alternatives]].

[[update-alternatives]] is probably the better approach here. 

Reference: [StackOverflow](https://askubuntu.com/a/1382824)
