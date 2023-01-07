# Custom CSS in VSCode
#vscode #customization

VSCode can be enhanced with custom CSS using the [vscode-custom-css](https://github.com/be5invis/vscode-custom-css) extension. My current CSS adds some extra style to the terminal to indicate active state:

```css
.terminal {  
    border-left: 1px solid #00ffaa;  
    padding-left: 1em;  
    opacity: 1;  
}  
.terminal:not(.focus) {  
    border-color: transparent;  
    opacity: 0.5;  
}
```

## VSCode Setting
List of CSS files to use:

```json
  "vscode_custom_css.imports": [
    "file:///path/to/css/file.css"
  ],
```

## Applying
Each VSCode update removes the custom css setting. To re-apply:
![[vscode-custom-css-enable.png]]

After applying, code will complain about a corrupt installation (because the extension changes installation files):
![[vscode-corrupt-installation-custom-css.png]]

Start VSCode as admin and quick fix with the [vscode-fix-checksums](https://github.com/lehni/vscode-fix-checksums) extension:
![[vscode-fix-checksums-apply.png]]
