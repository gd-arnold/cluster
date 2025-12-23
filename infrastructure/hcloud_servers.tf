resource "hcloud_server" "cluster" {
  name        = "ubuntu-16gb-fsn1-1"
  server_type = "cpx42"
  image       = "ubuntu-24.04"
  location    = "fsn1"
  datacenter  = local.hcloud_datacenter

  public_net {
    ipv4_enabled = true
    ipv4         = hcloud_primary_ip.cluster_ipv4.id
    ipv6_enabled = true
    ipv6         = hcloud_primary_ip.cluster_ipv6.id
  }
}
