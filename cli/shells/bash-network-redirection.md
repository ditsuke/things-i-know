#cli/linux #shell/bash #io/network
# Bash: Network Redirection

[[bash]] can do magic IO on pseudo-network files, for example:
```bash
exec 3<>/dev/tcp/example.com/80; printf >&3 'GET / HTTP/1.1/\r\n\r\n'; cat <&3
```
Supports both [[tcp]] and [[usp]]. Pseudo-file form: `/dev/(tcp|udp)/{address_or_ip}/{port}`. Refer to the [bash manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Redirections) for more details.

[[zsh]] can also do TCP/UDP/Unix socket IO, but with its [[ztcp]] module, which is less limited than the Bash builtin but not syntax-compatible. Reference for the [zsh/net/tcp module](https://info2html.sourceforge.net/cgi-bin/info2html-demo/info2html?(zsh)The%2520zsh%2Fnet%2Ftcp%2520Module) or with `man zshmodules` (zshmodule(1)). Note that I couldn't see support for `udp`, just sockets and tcp.

Some tips: https://andreafortuna.org/2021/03/06/some-useful-tips-about-dev-tcp/
