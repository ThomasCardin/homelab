resource "cloudflare_access_policy" "policy" {
  for_each = { for idx, name in var.names : idx => name }

  zone_id  = var.cloudflare_zone_id
  name     = "${each.value}-github-auth"
  decision = "allow"

  include = {
    group = var.group_list
  }
}

resource "cloudflare_zero_trust_access_application" "app" {
  for_each = { for idx, name in var.names : idx => name }

  zone_id                    = var.cloudflare_zone_id
  name                       = each.value
  domain                     = "${each.value}.ninebasetwo.net"
  type                       = "self_hosted"
  session_duration           = "24h"
  auto_redirect_to_identity  = false
  http_only_cookie_attribute = true
  policies = [
    cloudflare_access_policy.policy[each.key].id
  ]
}