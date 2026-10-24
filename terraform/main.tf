module "cname-records" {
  source             = "./modules/dns_records"
  cloudflare_zone_id = var.cloudflare_zone_id
  type               = "CNAME"

  names = [
    "argocd",
    "trilium",
    "ceph",
    "grafana",
    "alloy",
    "immich",
    "gobservability",
    "vault"
  ]
}

module "zero-trust-app" {
  source             = "./modules/zero_trust_application"
  cloudflare_zone_id = var.cloudflare_zone_id

  names = [
    "argocd",
    "ceph",
    "grafana",
    "alloy",
    "gobservability",
    "vault",
    "immich",
    "trilium"
  ]
}

module "s3_velero_bucket" {
  source = "./modules/aws-s3-bucket"

  bucket_name = "s3-velero-backup-ninebasetwo"
}
