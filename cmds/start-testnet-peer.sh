#!/bin/bash
set -e
twix-node start -p testnet -a peer -t target/testnet-peer $1 $2 $3
