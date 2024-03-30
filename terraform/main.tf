resource "cloudflare_access_application" "trilim-notes" {
  zone_id                   = var.cloudflare_access_zone_id
  name                      = "Trilum notes"
  domain                    = "trilium.ninebasetwo.net"
  type                      = "self_hosted"
  session_duration          = "24h"
  auto_redirect_to_identity = false
}


resource "cloudflare_access_policy" "test_policy" {
  application_id = "cb029e245cfdd66dc8d2e570d5dd3322"
  zone_id        = "0da42c8d2132a9ddaf714f9e7c920711"
  name           = "staging policy"
  precedence     = "1"
  decision       = "allow"

  include {
    github {
      identity_provider_id = "your_identity_provider_id"
      name                = "your_github_name"
      teams               = ["team1", "team2"]
    }
  }

  require {
    ip = [var.office_ip]
  }
}