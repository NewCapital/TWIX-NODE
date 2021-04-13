#!/bin/bash
set -e

twix-node config -p bootstrap --report -t target/bootstrap $1
