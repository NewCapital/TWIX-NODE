#!/bin/bash
set -e

twix-node start --reset --preset bootstrap --customPreset ./test/freenodes_preset.yml --user current -t target/bootstrap-freenodes
