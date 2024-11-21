resource "cloudflare_record" "record" {
  zone_id = var.cloudflare_zone_id
  value   = var.dns
  name    = var.name
  type    = var.type
  ttl     = 1
  proxied = true
}