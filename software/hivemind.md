#software/system-utilities/process-managers

[GitHub](https://github.com/DarthSim/hivemind)

> Hivemind is a process manager for Procfile-based applications. At the moment, it supports Linux, FreeBSD, and macOS.

Hivemind is like a _little sister_ to [[overmind]] -- which supports a lot more many features such as an integration with [[tmux]].

> How is Hivemind relevant?

Hivemind was introduced to me by a [[fly.io]] blog, which promoted it as an potential option to manage multiple processes in a single fly application. In general, Hivemind is useful to organise and manange development processes associated with a single application, perhaps somewhat like [[docker-compose]] but leaner and non-containerized. I also see it as a somewhat simpler alternative to [[systemd]] where complex process management is 

> How does it work?

Hivemind and Overmind both use a [[procfile]] for declarative mangement of processes that must be maintained.