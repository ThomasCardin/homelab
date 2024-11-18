terraform {
  cloud {
    organization = "ninebasetwo-dot-net"

    workspaces {
      name = "homelab"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  email   = var.email
  api_key = var.cloudflare_api_key
}