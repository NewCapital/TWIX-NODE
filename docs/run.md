`twix-node run`
======================

It boots the network via docker using the generated `docker-compose.yml` file and configuration. The config and compose methods/commands need to be called before this method. This is just a wrapper for the `docker-compose up` bash call.

* [`twix-node run`](#twix-node-run)

## `twix-node run`

It boots the network via docker using the generated `docker-compose.yml` file and configuration. The config and compose methods/commands need to be called before this method. This is just a wrapper for the `docker-compose up` bash call.

```
USAGE
  $ twix-node run

OPTIONS
  -b, --build
      If provided, docker-compose will run with -b (--build)

  -d, --detached
      If provided, docker-compose will run with -d (--detached) and this command will wait unit server is running before 
      returning

  -h, --help
      It shows the help of this command.

  -t, --target=target
      [default: target] The target folder where the twix-node network is generated

  --args=args
      Add extra arguments to the docker-compose up command. Check out https://docs.docker.com/compose/reference/up.

  --healthCheck
      It checks if the services created with docker compose are up and running.

      This command checks:
      - Whether the docker containers are running.
      - Whether the services' exposed ports are listening.
      - Whether the rest gateways' /node/health are OK.

      The health check process handles 'repeat' and custom 'openPort' services.

  --pullImages
      It pulls the images from DockerHub when running the configuration. It only affects alpha/dev docker images.

  --resetData
      It reset the database and node data but keeps the generated configuration, keys, voting tree files and block 1

  --timeout=timeout
      [default: 60000] If running in detached mode, how long before timing out (in milliseconds)

EXAMPLE
  $ twix-node run
```

_See code: [src/commands/run.ts](https://github.com/NewCapital/TWIX-NODE/src/commands/run.ts)_
