terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.57"
    }
  }

  cloud {
    organization = "garnaudov"

    workspaces {
      name = "personal"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}