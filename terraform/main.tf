module "cname-records" {
  source             = "./modules/dns_records"
  cloudflare_zone_id = var.cloudflare_zone_id

  names = ["argocd", "trilium", "ollama", "ceph", "grafana", "oauth2"]
  type  = "CNAME"
}