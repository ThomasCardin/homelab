<div align="center">

<img src="docs/pictures/k8s_logo.png" style="background-color: transparent; display: block; margin: 0 auto;" alt="kubernetes"/>

# Homelab kubernetes cluster

My homelab running K3S on a [Turing Pi 2](https://turingpi.com/product/turing-pi-2/)

</div>

## Setup

### Ansible

Create the cluster using Ansible:

1. Go to `ansible/inventory` and change the controlplane and workers IP addresses.
2. Go to `ansible/playbooks/playbook-worker.yml` and change the controlplane IP (line 36)
3. Go to `ansible/variables.yml` and add your k3s token.
4. Run this command at the root folder:

This command runs the k3s installation script with specific options to disable several components including flannel backend, network policy, cloud controller, servicelb, traefik, metrics-server, and kube-proxy in preparation to install Cilium.

```bash
ansible-playbook -i ansible/inventory ansible/playbook.yml --user=<YOUR-USER> --ask-pass -vvv
```

### Hardware

| Hardware    | Item Count | Link |
| -------- | ------- | ------- |
| Turing Pi 2 board | x1 | [Link](https://turingpi.com/product/turing-pi-2/) |
| Turing Pi RK1 - 16GB | x4 | [Link](https://turingpi.com/product/turing-rk1/?attribute_ram=16+GB) |
| Seagate IronWolf 8TB NAS Internal Hard Drive HDD | x2 | [Link](https://www.amazon.ca/dp/B084ZV4DXB?psc=1&ref=ppx_yo2ov_dt_b_product_details) |
| Corsair RM750e (2023) | x1 | [Link](https://www.amazon.ca/dp/B0BYR1BXC6?psc=1&ref=ppx_yo2ov_dt_b_product_details) |
| Samsung Series 980 – 500 Go PCIe Gen3. X4 NVMe 1.4 - Internal SSD M.2 | x1 | [Link](https://www.amazon.ca/dp/B08V7GT6F3?psc=1&ref=ppx_yo2ov_dt_b_product_details) |
| Samsung Series 980 - 1 To PCIe Gen3. X4 NVMe 1.4 - Internal SSD M.2 | x3 | [Link](https://www.amazon.ca/dp/B08V83JZH4?ref=ppx_yo2ov_dt_b_product_details&th=1) |
| MikroTik hAP ax2 US Version | x1 | [Link](https://mikrotik.com/product/hap_ax2) |
| MATX 2U Rackmount Server Chassis with 1x5.25 Front Bay / mATX/Mitx Support | x1 | [Link](https://www.amazon.ca/dp/B0B5CBW962?psc=1&ref=ppx_yo2ov_dt_b_product_details) |