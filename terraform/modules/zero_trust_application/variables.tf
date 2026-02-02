variable "names" {
  description = "names of all zero trust access applications"
  type        = list(string)
}

variable "cloudflare_zone_id" {
  description = "The zone ID for Cloudflare"
  type        = string
}

variable "policy_group_id" {
  description = "The Cloudflare Access group ID to use for authentication policy"
  type        = string
}

variable "policy_name_suffix" {
  description = "Suffix for the policy name to distinguish between auth types"
  type        = string
  default     = "auth"
}