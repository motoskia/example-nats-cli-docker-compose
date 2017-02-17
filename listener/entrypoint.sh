#!/bin/bash
echo "sleep $1"
sleep $1
# http://stackoverflow.com/a/9057392/4126114
nats --server nats://nats:4222 ${@:2}
