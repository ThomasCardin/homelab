resource "cloudflare_record" "record" {
  for_each = names

  zone_id = var.cloudflare_zone_id
  value   = var.dns
  name    = each.key
  type    = var.type
  ttl     = 1
  proxied = true
}