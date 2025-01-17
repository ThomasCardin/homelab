variable "names" {
  description = "names of all zero trust access applications"
  type        = list(string)
}

variable "cloudflare_zone_id" {
  description = "The zone ID for Cloudflare"
  type        = string
}