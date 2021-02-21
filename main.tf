
# Definicao do Provider - Digital Ocean
provider "digitalocean" {
  token = var.do_token
}

# Chave SSH
resource "digitalocean_ssh_key" "acesso-ssh" {
  name       = "SSH"
  public_key = file(".ssh/.id_rsa.pub")
}


# Create a web server
resource "digitalocean_droplet" "webserver" {
  image  = "ubuntu-18-04-x64"
  name   = "web-1"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  backups = var.do_backups
  ssh_keys = [digitalocean_ssh_key.acesso-ssh.fingerprint]

  # ScriptShell - Configuracao do Ansible e Pacotes Adicionais
  connection {
    type     = "ssh"
    user     = "root"
    private_key = file(".ssh/.id_rsa")
    host     = self.ipv4_address
  }
  provisioner "file" {
    source      = "pre-req.sh"
    destination = "/tmp/pre-req.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/pre-req.sh",
      "/tmp/pre-req.sh"
    ]
  }


}



