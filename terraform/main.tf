resource "cloudflare_record" "cname_argocd" {
  zone_id = var.cloudflare_zone_id
  value   = var.dns
  name    = "argocd"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "cname_trilium" {
  zone_id = var.cloudflare_zone_id
  value   = var.dns
  name    = "trilium"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "cname_ollama" {
  zone_id = var.cloudflare_zone_id
  value   = var.dns
  name    = "ollama"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "cname_ceph" {
  zone_id = var.cloudflare_zone_id
  value   = var.dns
  name    = "ceph"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}