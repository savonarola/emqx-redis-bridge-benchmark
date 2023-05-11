#!/bin/bash

set -xe

auth="key:secret"
endpoint="http://localhost:18083"

curl -X DELETE -u "$auth" "${endpoint}/api/v5/rules/rule_redis"

curl -X DELETE -u "$auth" "${endpoint}/api/v5/bridges/redis_single%3Aredis"
