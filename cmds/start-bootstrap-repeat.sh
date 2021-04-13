#!/bin/bash
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
twix-node start -p bootstrap -c test/repeat_preset.yml -t target/bootstrap-repeat --password 1234 $1
