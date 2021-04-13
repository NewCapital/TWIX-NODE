#!/bin/bash
set -e

# docker rm -f $(docker ps -aq)
twix-node start -p bootstrap -u current -t target/bootstrap  -c test/custom_bootstrap.yml --password 1234 $1
