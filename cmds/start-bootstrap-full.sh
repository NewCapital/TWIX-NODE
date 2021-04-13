#!/bin/bash
set -e

twix-node start -p bootstrap -a full -t target/bootstrap --password 1234 -c test/full_preset.yml $1 $2 $3
