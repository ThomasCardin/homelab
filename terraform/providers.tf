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
      version = "5.0.0-alpha1"
    }
  }

  required_version = ">= 1.9.0"
}

provider "cloudflare" {
  email   = var.email
  api_key = var.cloudflare_api_key
}