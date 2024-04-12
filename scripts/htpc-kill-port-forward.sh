#!/bin/bash

processes=$(ps aux | grep 'kubectl port-forward')

pids=$(echo "$processes" | awk '{print $2}')

for pid in $pids; do
    echo "Killing PID: $pid"
    kill "$pid"
done
