- Check processes [[lsof]]:
	`lsof -i -P -n | grep LISTEN`
	- Or for port:
	  `lsof -i -P -n | grep LISTEN ":3000.*LISTEN"`
- Or with [[netstat]]:
	`netstat -nlp | grep "$PORT"`, etc
- Or to check if _anything_ is listening on some address (local or not) at all with [[netcat]]:
	`nc -z $HOST $PORT`
	The `z` means netcat will only try to open a socket and bind, with zero I/O

  