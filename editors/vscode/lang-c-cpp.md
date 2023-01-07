---
Aliases: Setting up C/C++ on Visual Studio Code
---

Setting up a working C/C++ setup is rather simple.
1. Install the C/C++ Extension pack
   `code --install-extension ms-vscode.cpptools-extension-pack`
2. Set the compilerPath to `g++` (or `gcc`) in [[code-settings.json|settings.json]]:
   `"C_Cpp.default.compilerPath": "/path/to/g++",`

While the extension takes care of standard library include paths through the compiler path, additional include paths for non-standard setups can be configured with the `C_Cpp.default.systemIncludePath` setting key (array of paths).
