# Homelab (private version) - Bleeding edge, some features might not work

## K3S

### Ansible

Create a K3s cluster using ansible.

1. Change the host and workers IP addresses inside the `ansible/inventory` file
2. Run this command:

```bash
ansible-playbook -i ansible/inventory ansible/playbook.yml --user=<YOUR-USER> --ask-pass -vvv
```

## Hardware and information

controlplane: 192.168.2.203

worker1: 192.168.2.201
worker2: 192.168.2.204
worker3: 192.168.2.206 -> have access to the HDD
