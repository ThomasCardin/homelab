variable "cloudflare_zone_id" {
  description = "The zone ID for Cloudflare"
  type        = string
}

variable "dns" {
  description = "value for DNS record"
  type        = string
  default     = "ninebasetwo.net"
}

variable "names" {
  description = "names of record"
  type        = list(string)
}

variable "type" {
  description = "type of record"
  type        = string
  default     = "CNAME"
}