resource "cloudflare_record" "example" {
  zone_id = var.cloudflare_zone_id
  name    = "argocd"
  value   = var.dns
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "example" {
  zone_id = var.cloudflare_zone_id
  name    = "trilium"
  value   = var.dns
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "example" {
  zone_id = var.cloudflare_zone_id
  name    = "ollama"
  value   = var.dns
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "example" {
  zone_id = var.cloudflare_zone_id
  name    = "ceph"
  value   = var.dns
  type    = "CNAME"
  ttl     = 3600
}