#docker #docker-compose

## Fails Silently
- Be sure you're running `docker-compose exec <service-name>` and not `docker-compose exec <container-name>` [ref-1][github-issues]

## Interactivity / TTY Allocation
Unlike `docker exec`, `docker-compose exec` allocates a TTY by default (can be disabled with `-T`)

[github-issues]: https://github.com/docker/compose/issues/4706#issuecomment-292360566
