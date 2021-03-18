##############################################################################
# Configuracao do Droplet
##############################################################################


resource "null_resource" "servidor-vultr" {
  triggers = {
    ip_address = vultr_instance.my_instance.main_ip
  }

  connection {
    type     = "ssh"
    user     = "root"
    private_key = file("ssh/id_rsa")
    host     = vultr_instance.my_instance.main_ip
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
    vultr_dns_domain.my_domain,
  ]
}