# GPG: GNU Privacy Guard
GnuPG is a command line utility for assymetric encryption (if that sounds similar to SSH, it is!). I mainly use GPG to sign Git commits, but other uses includes signing emails to verify sender identity, encrypting messages only decipherable with the private key, etc.

## Creating a key-pair
#incomplete #todo

## Export Public Key
- List keys with `gpg --list-secret-keys`. Copy key id.
- Export public key as ASCII with `gpg --armor --export <ID>`

## Windows Problems
On Windows, GPG errors out while signing Git commits if the `gpg.program` Git config option is not set:
`gpg: singing failed: No secret key`, etc.
Simple fix: `git config --global gpg.program $(where gpg)`, or similar.

## Migrating GPG keys
### Exporting
Perhaps the simpler part:
- `gpg --list-keys` lists keys with output like:
  ![[gpg-list-keys.png]]
The interesting thing for us in this is the uid (`Tushar (Heh) <ditsuke@protonmail.com>`)
- Export public key with `gpg --export -a <uid> > k.pub.key`
- Export private key (decrypted) with: `gpg --export-secret-key -a <uid> > k.priv.key`
### Importing
Okay, so here's where Windows and GPG don't play friends.
- Importing the public key should be simple with `gpg --import k.pub.key`. But:
  ![[gpg-import-invalid.png]]
  After draining much time into this I realised its because GPG export messes up the charset and line endings on the exported key. [dos2unix](dos2unix) presents a simple fix: `dos2unix ditsuke.key`. GPG should be happy:
  ![[gpg-import-sucess.png]]
  Note that the screenshot shows "not changed" because the machine alredy had this key imported.

- Importing the private key requires the same command: `gpg --import k.priv.key`, of course with the `dos2unix` wand if the origin was a windows machine.