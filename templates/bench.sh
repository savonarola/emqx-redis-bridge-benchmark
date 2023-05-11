#!/bin/bash

./emqttb --loiter 10min \
    @pub --topic 't/%n' --conninterval 5ms --pubinterval 1s --num-clients 25000 --size 200 \
    @g --host lb.int.ilya:1883 --ifaddr $(./hosts.py)
