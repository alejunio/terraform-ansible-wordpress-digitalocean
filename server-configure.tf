##############################################################################
# Configuracao do Droplet
##############################################################################


resource "null_resource" "droplet-do" {
  triggers = {
    ip_address = digitalocean_floating_ip.ip_dedicado.ip_address
  }

  connection {
    type     = "ssh"
    user     = "root"
    private_key = file("ssh/id_rsa")
    host     = digitalocean_droplet.webserver.ipv4_address
  }

  provisioner "file" {
    source      = "pre-req.sh"
    destination = "/tmp/pre-req.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/pre-req.sh",
      "/tmp/pre-req.sh",
    ]
  }
  
  // Pacote Ansible com Stack LAMP SSL e WordPress
  provisioner "file" {
    source      = "ansible/"
    destination = "/home/ansible/"
  }
  provisioner "remote-exec" {
    inline = [
      "cd /home/ansible",
      "ansible-playbook playbook.yml",
    ]
  }

  depends_on = [
    digitalocean_domain.app,
  ]
}