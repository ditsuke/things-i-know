Complex systems (like [[nix]]) that depend on dynamic library linking and juggle with versions and so on can cause really tricky and hard to debug issues. This is where a tool like the LD_DEBUG environment variable can come in handy. Just by setting `LD_DEBUG=1`, Linux's dynamic library loader LD starts emitting logs about all of its actions in sequence making it a heck lot easier to trace down the cause of issues like why one library is loaded before another.

References:
- https://bnikolic.co.uk/blog/linux-ld-debug.html