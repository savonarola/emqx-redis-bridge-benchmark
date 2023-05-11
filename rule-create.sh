#!/bin/bash

set -xe

auth="key:secret"
endpoint="http://localhost:18083"

curl -X POST -u "$auth" "${endpoint}/api/v5/bridges" -d @bridge.json \
    -H 'Content-Type: application/json' \
    -H 'Accept: application/json'

echo
sleep 2
curl -X POST -u "$auth" "${endpoint}/api/v5/rules" -d @rule.json \
    -H 'Content-Type: application/json' \
    -H 'Accept: application/json'
