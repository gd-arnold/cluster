resource "hcloud_primary_ip" "cluster_ipv4" {
  name          = "ip-v4-cluster"
  type          = "ipv4"
  assignee_type = "server"
  datacenter    = local.hcloud_datacenter
  auto_delete   = true
}

resource "hcloud_primary_ip" "cluster_ipv6" {
  name          = "ip-v6-cluster"
  type          = "ipv6"
  assignee_type = "server"
  datacenter    = local.hcloud_datacenter
  auto_delete   = true
}