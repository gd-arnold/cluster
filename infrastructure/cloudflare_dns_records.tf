resource "cloudflare_dns_record" "cluster_records" {
  for_each = local.cloudflare_cluster_records

  zone_id = var.cloudflare_zone_id
  name    = each.value
  type    = "A"
  ttl     = 1
  content = hcloud_primary_ip.cluster_ipv4.ip_address
  proxied = true
}

resource "cloudflare_dns_record" "www" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  type    = "CNAME"
  ttl     = 1
  content = "garnaudov.com"
  proxied = true
}
