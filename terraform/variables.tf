variable "email" {
  description = "The email address for Cloudflare"
  type = string
}

variable "cloudflare_api_key" {
  description = "The API key for Cloudflare"
  type = string
}

variable "cloudflare_zone_id" {
  description = "The zone ID for Cloudflare"
  type = string
}

variable "dns" {
  description = "value for DNS record"
  type = string
}

variable "name" {
  description = "name of record"
  type = string
}

variable "type" {
  description = "type of record"
  type = string
  default = "CNAME"
}