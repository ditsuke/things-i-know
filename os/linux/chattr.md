`chattr` is a [[linux]] command line utility to change file attributes on Linux file systems. It is complemented by [[lsattr]].

Exerpt from the manual:
```
NAME
       chattr - change file attributes on a Linux file system

SYNOPSIS
       chattr [ -RVf ] [ -v version ] [ -p project ] [ mode ] files...

DESCRIPTION
       chattr changes the file attributes on a Linux file system.

       The format of a symbolic mode is +-=[aAcCdDeFijmPsStTux].

       The operator '+' causes the selected attributes to be added to the existing attributes of the files; '-' causes them to be removed; and '=' causes them to be the only attributes that the files have.

       The letters 'aAcCdDeFijmPsStTux' select the new attributes for the files: append only (a), no atime updates (A), compressed (c), no copy on write (C), no dump (d), synchronous directory updates (D), extent format (e), case-
       insensitive directory lookups (F), immutable (i), data journaling (j), don't compress (m), project hierarchy (P), secure deletion (s), synchronous updates (S), no tail-merging  (t),  top  of  directory  hierarchy  (T),  un‐
       deletable (u), and direct access for files (x).

       The following attributes are read-only, and may be listed by lsattr(1) but not modified by chattr: encrypted (E), indexed directory (I), inline data (N), and verity (V).

       Not all flags are supported or utilized by all file systems; refer to file system-specific man pages such as btrfs(5), ext4(5), and xfs(5) for more file system-specific details.

OPTIONS
       -R     Recursively change attributes of directories and their contents.

       -V     Be verbose with chattr's output and print the program version.

       -f     Suppress most error messages.

       -v version
              Set the file's version/generation number.

       -p project
              Set the file's project number.
```

Attributes are left out.
