#!/bin/bash

set -e

auth="key:secret"
endpoint="http://localhost:18083"

curl -s -u "$auth" "${endpoint}/api/v5/bridges" \
    -H 'Content-Type: application/json' \
    -H 'Accept: application/json' \
    | jq

curl -s -u "$auth" "${endpoint}/api/v5/rules" \
    -H 'Content-Type: application/json' \
    -H 'Accept: application/json' \
    | jq
