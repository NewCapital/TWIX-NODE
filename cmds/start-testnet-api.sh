#!/bin/bash
set -e
twix-node start -p testnet -a api -t target/testnet-api $1 $2 $3
