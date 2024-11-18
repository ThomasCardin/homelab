#!/bin/bash

# Define arrays for services and their corresponding ports
services=("argocd-server" "open-webui-service" "trilium-svc")
namespaces=("argocd" "ollama" "trilium-notes")
local_ports=("8080" "8081" "8082")  # Ports locaux sur lesquels forwarder

# Loop through the services
for (( i=0; i<${#services[@]}; i++ )); do
    service=${services[i]}
    namespace=${namespaces[i]}
    local_port=${local_ports[i]}

    # Determine the target port on the service
    if [[ $service == "argocd-server" ]]; then
        target_port="80"
    else
        target_port="8080"
    fi

    # Execute kubectl port-forward command
    echo "Forwarding port for service $service in namespace $namespace to local port $local_port ..."
    kubectl port-forward service/$service -n $namespace $local_port:$target_port &
done

# Wait for user interruption
echo "Press Ctrl+C to stop port forwarding..."

# Wait indefinitely
wait

