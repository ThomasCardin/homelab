resource "cloudflare_dns_record" "record" {
  for_each = { for idx, name in var.names : idx => name }

  zone_id = var.cloudflare_zone_id
  content = var.dns
  name    = each.value
  type    = var.type
  ttl     = 1
  proxied = true
}