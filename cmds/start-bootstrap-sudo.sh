#!/bin/bash
set -e

twix-node start -p bootstrap -r  -u '' -t target/bootstrap --password 1234 $1
