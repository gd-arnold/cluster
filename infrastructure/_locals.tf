locals {
  hcloud_datacenter = "fsn1-dc14"

  cloudflare_cluster_records = toset([
    "@",
    "argocd",
    "arena",
    "gateway-service",
    "grafana"
  ])
}
