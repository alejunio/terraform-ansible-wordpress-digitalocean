terraform {
  required_providers {
    digitalocean = {
      source = "terraform-providers/digitalocean"
    }
    cloudflare = {
      source = "terraform-providers/cloudflare"
    }
  }
  required_version = ">= 0.13"
}
