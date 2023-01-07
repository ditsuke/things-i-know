# [SSH](ssh.md): Keys
## Generating key-pairs with `ssh-keygen`
Although there are a number of crypto schemes, Ed25519 is recommended now with RSA still being the default as of August 2022 because of compatibility. tl;dr `ssh-keygen -t ed25519 -a 100` is the recommended way to generate a key. Further prompts will 
