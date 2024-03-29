# Cilium configuration for talos os

## This includes

- Hubble
- Ingress
- Gateway API
- The cilium way of metallb

```bash
helm template cilium cilium/cilium \
  --version 1.15.0 \
  --namespace kube-system \
  --set ipam.mode=kubernetes \
  --set kubeProxyReplacement=strict \
  --set securityContext.capabilities.ciliumAgent="{CHOWN,KILL,NET_ADMIN,NET_RAW,IPC_LOCK,SYS_ADMIN,SYS_RESOURCE,DAC_OVERRIDE,FOWNER,SETGID,SETUID}" \
  --set securityContext.capabilities.cleanCiliumState="{NET_ADMIN,SYS_ADMIN,SYS_RESOURCE}" \
  --set cgroup.autoMount.enabled=false \
  --set cgroup.hostRoot=/sys/fs/cgroup \
  --set hubble.relay.enabled=true \
  --set hubble.ui.enabled=true \
  --set k8sServiceHost=localhost \
  --set k8sServicePort=7445 \
  --set l2announcements.enabled=true \
  --set k8sClientRateLimit.qps=100 \
  --set k8sClientRateLimit.burst=200 \
  --set rollOutCiliumPods=true \
  --set operator.rollOutPods=true \
  # --set ingressController.enabled=true \
  # --set ingressController.loadbalancerMode=dedicated \
  --set gatewayAPI.enabled=true > cilium.yaml
```

# K3S

```bash
helm template cilium cilium/cilium \
  --version 1.15.0 \
  --namespace kube-system \
  --set ipam.mode=kubernetes \
  --set hubble.relay.enabled=true \
  --set hubble.ui.enabled=true \
  --set l2announcements.enabled=true \
  --set k8sClientRateLimit.qps=100 \
  --set k8sClientRateLimit.burst=200 \
  --set rollOutCiliumPods=true \
  --set operator.rollOutPods=true \
  --set kubeProxyReplacement=true \
  --set gatewayAPI.enabled=true > cilium.yaml
```