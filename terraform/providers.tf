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

    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }

  required_version = ">= 1.9.0"
}

provider "cloudflare" {
  email   = var.email
  api_key = var.cloudflare_api_key
}

provider "aws" {
  region     = "ca-central-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
