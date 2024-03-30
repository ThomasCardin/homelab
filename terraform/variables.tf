variable "email" {
    description = "The email address for Cloudflare"
    type = string
}

variable "cloudflare_api_key" {
    description = "The API key for Cloudflare"
    type = string
}

variable "cloudflare_access_account_id" {
  description = "value of the account_id field in the Cloudflare Access configuration"
  type = string
}

variable "cloudflare_access_zone_id" {
  description = "value of the zone_id field in the Cloudflare Access configuration"
  type = string
}

variable "cloudflare_access_policy_name" {
  description = "value of the name field in the Cloudflare Access configuration"
  type = string
}