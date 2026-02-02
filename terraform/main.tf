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

module "zero-trust-app" {
  source             = "./modules/zero_trust_application"
  cloudflare_zone_id = var.cloudflare_zone_id

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

# module "zero-trust-2fa" {
#   source             = "./modules/zero_trust_application_2fa"
#   cloudflare_zone_id = var.cloudflare_zone_id

#   names = [
#     "trilium"
#   ]
# }

module "s3_velero_bucket" {
  source = "./modules/aws-s3-bucket"

  bucket_name = "s3-velero-backup-ninebasetwo"
}
