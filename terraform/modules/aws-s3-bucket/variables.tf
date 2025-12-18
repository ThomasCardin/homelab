variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "ca-central-1"
}

variable "enable_versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = string
  default     = "Enabled"
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default     = {}
}