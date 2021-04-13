#!/bin/bash
set -e
twix-node start -p testnet -a dual -t target/testnet-dual $1 $2 $3
