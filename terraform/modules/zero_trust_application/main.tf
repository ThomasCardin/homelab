resource "cloudflare_access_policy" "github-app-policy" {
  account_id = var.cloudflare_api_key
  name       = "github-auth"
  decision   = "allow"

  include {
    group = ["dc009146-1f84-4d2c-bbd4-670ee9d65d5d"]
  }
}

resource "cloudflare_zero_trust_access_application" "app" {
  depends_on = [cloudflare_access_policy.github-app-policy]
  for_each   = { for idx, name in var.names : idx => name }

  zone_id = var.cloudflare_zone_id

  name                       = each.value
  domain                     = "${each.value}.ninebasetwo.net"
  type                       = "self_hosted"
  session_duration           = "24h"
  auto_redirect_to_identity  = false
  http_only_cookie_attribute = true
  policies = [
    cloudflare_access_policy.github-app-policy.id
  ]
}