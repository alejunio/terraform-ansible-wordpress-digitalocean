
# Saida: IP do Servidor
output "webserver" {
  value = "${digitalocean_droplet.webserver.ipv4_address}"
}

