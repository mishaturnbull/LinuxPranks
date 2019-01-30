#!/bin/bash

iptables -A OUTPUT -p tcp -m string --string "stackoverflow.com" --algo kmp -j REJECT
