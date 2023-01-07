List file attributes on a Linux file system. Complemented by [[chattr]] to change/set attributes.

```
NAME
       lsattr - list file attributes on a Linux second extended file system

SYNOPSIS
       lsattr [ -RVadlpv ] [ files...  ]

DESCRIPTION
       lsattr lists the file attributes on a second extended file system.  See chattr(1) for a description of the attributes and what they mean.

OPTIONS
       -R     Recursively list attributes of directories and their contents.

       -V     Display the program version.

       -a     List all files in directories, including files that start with `.'.

       -d     List directories like other files, rather than listing their contents.

       -l     Print the options using long names instead of single character abbreviations.

       -p     List the file's project number.

       -v     List the file's version/generation number.
```
	