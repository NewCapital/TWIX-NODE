#!/bin/bash
set -e

twix-node start -p bootstrap -a light -r  -t target/light $1
