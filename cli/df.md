#cli/linux #coreutils

Check filesystem space usage:

```man
NAME
       df - report file system space usage

SYNOPSIS
       df [OPTION]... [FILE]...

DESCRIPTION
       This  manual  page  documents the GNU version of df.  df displays the amount of space available on the file system containing each file name argument.  If no file name is given, the space available on
       all currently mounted file systems is shown.  Space is shown in 1K blocks by default, unless the environment variable POSIXLY_CORRECT is set, in which case 512-byte blocks are used.

       If an argument is the absolute file name of a device node containing a mounted file system, df shows the space available on that file system rather than on the file system containing the device  node.
       This version of df cannot show the space available on unmounted file systems, because on most kinds of systems doing so requires very nonportable intimate knowledge of file system structures.
```
