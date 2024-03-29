# K3S configuration

## Before

Change the hostname of every machine using this command `sudo hostnamectl set-hostname controlplane`:

- One for controlplane
- The rest for worker1, worker2, worker3

Run
```
sudo apt-get update && sudo apt-get install -y iptables
```

## Control plane init command

Disabling flannel backend to setup cilium CNI

```bash
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" sh -s - --flannel-backend none \
  --disable-network-policy \
  --disable servicelb \
  --disable traefik \
  --disable metrics-server \
  --disable kube-proxy \
  --write-kubeconfig-mode 644 \
  --token j@z3T^wePe4Z7vJ7Pb
```

## Worker init command (join the cluster command)

```bash
curl -sfL https://get.k3s.io | K3S_URL=https://192.168.2.231:6443 K3S_TOKEN=j@z3T^wePe4Z7vJ7Pb sh -
```

## References

- [Turing pi K3S installation](https://docs.turingpi.com/docs/turing-pi2-kubernetes-installation)