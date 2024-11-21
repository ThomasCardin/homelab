resource "cloudflare_dns_record" "record" {
  for_each = var.names

  zone_id = var.cloudflare_zone_id
  value   = var.dns
  name    = each.key
  type    = var.type
  ttl     = 1
  proxied = true
}