# Broot: File Explorer and Launcher
#tui #cli #file-explorer
## Usage
```
broot 1.12.0  
dystroy <denys.seguret@gmail.com>  
A tree explorer and a customizable launcher  
Complete documentation lives at https://dystroy.org/broot  
  
USAGE:  
broot.exe [FLAGS] [OPTIONS] [ROOT]  []()
  
FLAGS:  
-d, --dates Show the last modified date of files and directories  
-D, --no-dates Don't show last modified date  
-f, --only-folders Only show folders  
-F, --no-only-folders Show folders and files alike  
--show-root-fs Show filesystem info on top  
-g, --show-git-info Show git statuses on files and stats on repo  
-G, --no-show-git-info Don't show git statuses on files  
--git-status Only show files having an interesting git status, including hidden ones  
-h, --hidden Show hidden files  
-H, --no-hidden Don't show hidden files  
-i, --show-gitignored Show files which should be ignored according to git  
-I, --no-show-gitignored Don't show gitignored files  
-p, --permissions Show permissions, with owner and group  
-P, --no-permissions Don't show permissions  
-s, --sizes Show the size of files and directories  
-S, --no-sizes Don't show sizes  
--sort-by-count Sort by count (only show one level of the tree)  
--sort-by-date Sort by date (only show one level of the tree)  
--sort-by-size Sort by size (only show one level of the tree)  
-w, --whale-spotting Sort by size, show ignored and hidden files  
--no-sort Don't sort  
-t, --trim-root Trim the root too and don't show a scrollbar  
-T, --no-trim-root Don't trim the root level, show a scrollbar  
--install Install or reinstall the br shell function  
--help Prints help information  
-V, --version Prints version information  
  
OPTIONS:  
--outcmd <cmd-export-path> Where to write the produced cmd (if any)  
-c, --cmd <commands> Semicolon separated commands to execute  
--color <color> Whether to have styles and colors (auto is default and usually OK) [default:  
auto] [possible values: yes, no, auto]  
--conf <conf> Semicolon separated paths to specific config files  
--height <height> Height (if you don't want to fill the screen or for file export)  
--set-install-state <state> Set the installation state (for use in install script) [possible values:  
undefined, refused, installed]  
--print-shell-function <shell> Print to stdout the br function for a given shell  
  
ARGS:  
<ROOT> sets the root directory
```
