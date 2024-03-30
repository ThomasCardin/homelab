terraform {
  cloud {
    organization = "ninebasetwo-dot-net"

    workspaces {
      name = "homelab"
    }
  }
}

provider "cloudflare" {
  email   = var.email
  api_key = var.cloudflare_api_key
}