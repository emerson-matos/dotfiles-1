#!/usr/bin/env bash

vpn_running="$(pgrep "$VPN_COMMAND_NAME")"

if [ $# -eq 1 ]; then
    if [ -z "$vpn_running" ]; then
        $VPN_START
        exit 0
    fi
    kill "$vpn_running"
    exit 0
fi

if [ -z "$vpn_running" ]; then
    echo '{"class": "on"}'
    exit 0
fi

echo '{"class": "off"}'
