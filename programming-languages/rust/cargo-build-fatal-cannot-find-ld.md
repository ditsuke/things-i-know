If [[cargo]] // some rust build fails with a message like
```
 = note: collect2: fatal error: cannot find 'ld'
          compilation terminated.


error: linking with `cc` failed: exit status: 1
```

It's probably because of a missing [[lld]], easily installed with the OS package manager (on Linux, where I encountered this). Reference: [stackoverflow.com/q/70272393](https://stackoverflow.com/q/70272393).
