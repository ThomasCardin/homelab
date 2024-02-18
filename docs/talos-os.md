# Talos os configuration

## Gen configuration specificaly fpr the Cilium CNI (install without any CNI and disable the kube-proxy)

```bash
talosctl gen config \
    ninebasetwo-tpi-cluster https://192.168.2.231:6443 \
    --config-patch '[{"op": "add", "path": "/cluster/proxy", "value": {"disabled": true}}, {"op":"add", "path": "/cluster/network/cni", "value": {"name": "none"}}]' -o ninebasetwo-tpi-cluster-talos-config
```

## Join the control-plane to the cluster

```bash
talosctl apply-config --insecure -e 192.168.2.231 -n 192.168.2.231 --file controlplane.yaml

```

## Join the workers to the cluster

```bash
talosctl apply-config --insecure -e 192.168.2.232 -n 192.168.2.232 --file worker.yaml
talosctl apply-config --insecure -e 192.168.2.233 -n 192.168.2.233 --file worker.yaml
talosctl apply-config --insecure -e 192.168.2.234 -n 192.168.2.234 --file worker.yaml
```

## Configure an endpoint

```bash
talosctl config endpoints 192.168.2.231
```

## Configure the nodes

```bash
talosctl config nodes 192.168.2.231
```

## Check the status

```bash
talosctl dmesg
```

## Bootstrap kubernetes

```bash
talosctl bootstrap --nodes 192.168.2.231 --endpoints 192.168.2.231 \
  --talosconfig=./talosconfig
```

## Download the kubeconfig

```bash
talosctl kubeconfig --nodes 192.168.2.231 --endpoints 192.168.2.231
```
