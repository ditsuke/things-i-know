# Rust: MSVC Toolchain
The MSVC toolchain (default on [[windows]] uses libraries and compilers from [[msvc| Microsoft VIsual C++]]. 

## Setup
- Install the [[msvc-build-tools| Visual C++ Build Tools]] with [[winget]]:
  ```powershell
  winget install --id Microsoft.VisualStudio.2019.BuildTools
  ```
* Install the optional C++ Tools and Windows 10 SDK components through the Visual Studio Installer:
  ![[msvc-cpp-build-tools-opts.png]]

## C++ Libraries -- OpenSSL et-al
For libraries not included with the standard C++ build tools, like the [[lib-openssl|openssl]] lib, [[cargo]] tries to use the [[vcpkg]] library manager. Steps: install `vcpkg` followed by installing the `openssl` lib with `vcpkg install openssl`.

- Doing `openssl` right:
	- Install with [[vcpkg]]
	- Set `OPENSSL_DIR` to `<vcpkg-root>/installed/<triplet>` (example: `~/scoop/apps/vcpkg/current/installed/x64-windows/openssl`).
