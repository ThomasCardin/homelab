variable "email" {
  description = "The email address for Cloudflare"
  type        = string
}

variable "cloudflare_api_key" {
  description = "The API key for Cloudflare"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "The zone ID for Cloudflare"
  type        = string
}

variable "aws_access_key" {
  description = "AWS Access key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret key"
  type        = string
}