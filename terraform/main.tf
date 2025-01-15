module "cname-records" {
  source             = "./modules/dns_records"
  cloudflare_zone_id = var.cloudflare_zone_id

  names = ["argocd", "trilium", "ollama", "ceph", "grafana", "oauth2", "gotify", "actual", "atlantis"]
  type  = "CNAME"
}

module "zero-trust-app" {
  source             = "./modules/zero_trust_application"
  cloudflare_zone_id = var.cloudflare_zone_id

  names = ["ollama", "argocd", "ceph", "grafana", "trilium", "actual"]
}