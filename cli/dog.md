# dog: DNS Client
#cli #dns 

Dog is a cross-platform comand-line DNS client written in [[rust]], much like [[dig]]. Features:
- Colorized output.
- DNS-over-TLS and DNS-over-HTTPS support.
- JSON output (optional).

## Examples
`dog google.com`
`dog 0.tcp.in.ngrok.io`

## Problems
- On [[windows]], emits a `# Error [network]: No such host is known. (os error 11001)` (tracked by [ogham/dog#9](https://github.com/ogham/dog/issues/9)).
	Workaround: specify nameserver explicitly `dog google.com -n 1.1.1.1`.
