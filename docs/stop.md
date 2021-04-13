`twix-node stop`
=======================

It stops the docker-compose network if running (twix-node started with --detached). This is just a wrapper for the `docker-compose down` bash call.

* [`twix-node stop`](#twix-node-stop)

## `twix-node stop`

It stops the docker-compose network if running (twix-node started with --detached). This is just a wrapper for the `docker-compose down` bash call.

```
USAGE
  $ twix-node stop

OPTIONS
  -h, --help           It shows the help of this command.
  -t, --target=target  [default: target] The target folder where the twix-node network is generated

EXAMPLE
  $ twix-node stop
```

_See code: [src/commands/stop.ts](https://github.com/NewCapital/TWIX-NODE/src/commands/stop.ts)_
