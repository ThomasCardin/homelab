# Homelab (private version) - Bleeding edge, some features might not work

## K3S

### Ansible

Create a K3s cluster using ansible.

1. Change the host and workers IP addresses inside the `ansible/inventory` file
2. Run this command:

```bash
ansible-playbook -i ansible/inventory ansible/playbook.yml --user=<YOUR-USER> --ask-pass -vvv
```

## Talos OS

### Documentation

- [Talos os](docs/talos/talos-os.md)
- [Cilium](docs/talos/cilium.md)
