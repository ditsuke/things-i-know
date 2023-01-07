# vim: sublime modal editing, keybindings
#vim #text-editing #modal-editors 

Vim is more than a text editor. Vim is a language to interface with text editors that can be extended to interface with graphical interfaces like browsers.

Vim is not the only modal text editor either: [Helix (hx)](helix.md) and [Kakoune](kakoune.md) are other excellent and performant CLI modal text editors with a differing, non-vim compatible set of keybindings.

## Tricks
### Macros
Record:
1.  `q<x>` to start recording to register `@<x>`.
2.  `q` to stop recording.

Apply:
- Apply to single line: `@<x>`.
- Apply to multiple lines:
	1. Select lines
	2. Apply with command `:norm @<x>`
- `?` Are there more ways to apply macros?
