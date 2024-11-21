resource "cloudflare_zero_trust_access_application" "app" {
  zone_id                   = "0da42c8d2132a9ddaf714f9e7c920711"
  name                      = "staging application"
  domain                    = "staging.example.com"
  type                      = var.type
  session_duration          = "24h"
  auto_redirect_to_identity = false
  policies = [
    cloudflare_zero_trust_access_policy.example_1.id,
    cloudflare_zero_trust_access_policy.example_2.id
  ]
}