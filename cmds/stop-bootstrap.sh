#!/bin/bash
set -e

# docker rm -f $(docker ps -aq)
twix-node stop -t target/bootstrap
