##############################################################################
# Criacao de Droplet
##############################################################################

// Criando Droplet
resource "digitalocean_droplet" "webserver" {
  image  = "ubuntu-18-04-x64"
  name   = "web-21"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  backups = var.do_backups
  ssh_keys = [digitalocean_ssh_key.acesso.fingerprint]
}

// Criando IP Dedicado/Flutuante e anexando ao Droplet 
resource "digitalocean_floating_ip" "ip_dedicado" {
  droplet_id = digitalocean_droplet.webserver.id
  region     = digitalocean_droplet.webserver.region
}




