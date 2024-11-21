resource "cloudflare_zero_trust_access_application" "app" {
  for_each = { for idx, name in var.names : idx => name }
  zone_id  = var.cloudflare_zone_id
  name     = each.value
  domain   = "${each.value}.ninebasetwo.net"
  type     = "self_hosted"
  session_duration           = "24h"
  auto_redirect_to_identity  = false
  http_only_cookie_attribute = true
}

resource "cloudflare_access_policy" "github_app_policy" {
  for_each = cloudflare_zero_trust_access_application.app
  zone_id  = var.cloudflare_zone_id
  name     = "${each.key}-github-auth"
  application_id = each.value.id
  precedence = 1
  decision  = "allow"
  include {
    group = ["dc009146-1f84-4d2c-bbd4-670ee9d65d5d"]
  }
}