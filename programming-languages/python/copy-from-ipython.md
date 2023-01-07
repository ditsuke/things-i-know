---
Aliases: IPython's %history magic or how to get clean copyable output
---

To copy, say lines 3, 5 and 6:
`%history 3 5-6`

This will emit lines 3, 5 and 6 as pure text, without [[IPython]]'s prompt etc

The output can also be written to a file!
`%history 4 5-6 -f /path/to/output-file.py`

Or, use the `vi` mode!
`ipython --TerminalInteractiveShell.editing_mode=vi`

Reference: [How to Copy from IPython session without terminal prompts](https://stackoverflow.com/questions/41070403/how-to-copy-from-ipython-session-without-terminal-prompts)
