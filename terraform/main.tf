resource "cloudflare_access_application" "trilim-notes" {
  zone_id                   = var.cloudflare_access_zone_id
  name                      = "Trilum notes"
  domain                    = "trilium.ninebasetwo.net"
  type                      = "self_hosted"
  session_duration          = "24h"
  auto_redirect_to_identity = false
}