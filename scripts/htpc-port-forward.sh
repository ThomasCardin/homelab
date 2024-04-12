#!/bin/bash

svc=("htpc-sonarr:8989" "htpc-deluge-openvpn:8112" "htpc-jackett:9117" "htpc-radarr:7878" "htpc-bazarr:6767" "htpc-requestrr:4545" "plex-server-service:32400")

for item in "${svc[@]}"
do
    service_name="${item%%:*}"
    port="${item##*:}"

    echo "===================="
    echo "kubectl port-forward svc/$service_name $port:$port"
    kubectl port-forward "svc/$service_name" "$port:$port" -n htpc &
    ps -ef | grep "kubectl port-forward svc/$service_name $port:$port" | grep -v grep
    echo "===================="
done

echo "========= PID ==========="
ps aux | grep 'kubectl port-forward'
echo "========= END OF PID ==========="

sleep 2