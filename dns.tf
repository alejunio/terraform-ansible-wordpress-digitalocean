##############################################################################
# Gerenciamento de DNS
##############################################################################

// Criando Zona DNS (A)
resource "digitalocean_domain" "app" {
  name       = var.dns_domain
  ip_address = digitalocean_floating_ip.ip_dedicado.ip_address
}

// Criando Zona DNS (CNAME)
resource "digitalocean_record" "www" {
  domain = digitalocean_domain.app.name
  type   = "CNAME"
  name   = "www"
  value  = "${var.dns_domain}."
}