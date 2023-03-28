#databases/redis

[[redis]] offers server-side scripting capabilities powered by [[lua]]. Why?
- Transactional, meaning script executions guarantee:
	- Serial command execution: say bye to race conditions due to external calls within a script's evaluation context.
	- Safety. Once a script execution is triggered connection woes can't stop it.
- Performant. All script commands are executed server-side, so we save on network overhead and repeated serialization/deseralization cycles.
