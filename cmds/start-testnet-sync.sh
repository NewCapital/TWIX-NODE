#!/bin/bash
set -e
twix-node config -p testnet -a api -t target/testnet-sync -r
echo "Copying Data"
cp -rf ../networks/testnet-sync/data ./target/testnet-sync/nodes/api-node
echo "Copying DB"
mkdir -p ./target/testnet-sync/databases/db
cp -rf ../networks/testnet-sync/db ./target/testnet-sync/databases
twix-node compose -t target/testnet-sync
twix-node run -t target/testnet-sync
