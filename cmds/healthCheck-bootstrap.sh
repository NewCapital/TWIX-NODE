#!/bin/bash
set -e

twix-node healthCheck -t target/bootstrap $1
