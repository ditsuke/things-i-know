---
Aliases: Customise the obsidian vim mode
---
[GitHub](https://github.com/esm7/obsidian-vimrc-support)

The `obsidian-vimrc-support` [[obsidian-community-plugin]] adds support for the [[vimrc]] file in obsidian. However, this vimrc must be:
- Defined within the Obsidian workspace
- Use commands specific to the plugin, since Obsidian itself only supports vim emulation provided by the [[codemirror]] editor.

## Hook into Obsidian commands

The `:obcommand` command added by the plugin allows hooking into Obsidian commands from the vim command mode/keybindings.

To see a list of supported commands, execute `:obcommand` and find the command list in the [[developer-console]] (`ctrl-shift-I`)

The plugin's README warns that an Obsidian update may break these hooks, since they're not officially supported (at least as of Jan 2023).

## More functionality
- The plugin adds the functionality of Vim's [[vim-plug-surround]] plugin!
  However, no keybindings are shipped by default.
- Relative line numbers.  This plugin works well with [[obsidian-relative-line-numbers]].
- Extend commands with custom JS. This comes with a security warning because of arbitrary code execution by anyone who can access the obsidian vault.
