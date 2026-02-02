module "cname-records" {
  source             = "./modules/dns_records"
  cloudflare_zone_id = var.cloudflare_zone_id
  type               = "CNAME"

  names = [
    "argocd",
    "trilium",
    "ollama",
    "ceph",
    "grafana",
    "gotify",
    "actual",
    "atlantis",
    "alloy",
    "immich",
    "navidrome",
    "odoo",
    "gobservability",
    "litmus",
    "harbor"
  ]
}

module "zero-trust-github" {
  source             = "./modules/zero_trust_application"
  cloudflare_zone_id = var.cloudflare_zone_id
  policy_group_id    = "dc009146-1f84-4d2c-bbd4-670ee9d65d5d"
  policy_name_suffix = "github-auth"

  names = [
    "ollama",
    "argocd",
    "ceph",
    "grafana",
    "actual",
    "alloy",
    "gobservability",
    "harbor"
  ]
}

module "zero-trust-2fa" {
  source             = "./modules/zero_trust_application"
  cloudflare_zone_id = var.cloudflare_zone_id
  policy_group_id    = "e6a245c2-6fc7-4967-a86e-bf38ce283459"
  policy_name_suffix = "2fa-auth"

  names = [
    "trilium"
  ]
}

module "s3_velero_bucket" {
  source = "./modules/aws-s3-bucket"

  bucket_name = "s3-velero-backup-ninebasetwo"
}
