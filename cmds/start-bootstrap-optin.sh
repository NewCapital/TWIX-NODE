#!/bin/bash
set -e
twix-node start -u current -p bootstrap -c test/optin_preset.yml --password 1234 -t target/bootstrap-optin $1
