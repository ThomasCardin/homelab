module "argocd-record" {
  source = "./modules/records"
  cloudflare_zone_id = var.cloudflare_zone_id

  name = "argocd"
}

module "argocd-record" {
  source = "./modules/records"
  cloudflare_zone_id = var.cloudflare_zone_id

  name = "trilium"
}

module "argocd-record" {
  source = "./modules/records"
  cloudflare_zone_id = var.cloudflare_zone_id

  name = "ollama"
}

module "argocd-record" {
  source = "./modules/records"
  cloudflare_zone_id = var.cloudflare_zone_id

  name = "ceph"
}

module "argocd-record" {
  source = "./modules/records"
  cloudflare_zone_id = var.cloudflare_zone_id

  name = "grafana"
}

module "argocd-record" {
  source = "./modules/records"
  cloudflare_zone_id = var.cloudflare_zone_id

  name = "oauth2"
}
