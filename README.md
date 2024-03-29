# Homelab (private version) - Bleeding edge, some features might not work

## Tools and installation documentation

- [Talos os](docs/talos-os.md)
- [Cilium](docs/cilium.md)
- [Rook ceph](docs/rook-ceph.md)
- [K3S](docs/k3s.md)

## Run ansible playbooks

```bash
ansible-playbook -i ansible/inventory ansible/playbook.yml --user=<YOUR-USER> --ask-pass -v
```