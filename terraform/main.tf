resource "cloudflare_record" "cname_argocd" {
  zone_id = var.cloudflare_zone_id
  name    = "argocd"
  value   = var.dns
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "cname_trilium" {
  zone_id = var.cloudflare_zone_id
  name    = "trilium"
  value   = var.dns
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "cname_ollama" {
  zone_id = var.cloudflare_zone_id
  name    = "ollama"
  value   = var.dns
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "cname_ceph" {
  zone_id = var.cloudflare_zone_id
  name    = "ceph"
  value   = var.dns
  type    = "CNAME"
  ttl     = 3600
}