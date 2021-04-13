#!/bin/bash
sudo ./cmds/clean-all.sh
twix-node config
twix-node compose -u current
docker-compose -f target/docker/docker-compose.yml up --build peer-node-0 peer-node-1
