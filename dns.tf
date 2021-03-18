##############################################################################
# Gerenciamento de DNS


resource "vultr_dns_domain" "my_domain" {
    domain = var.dns_domain
    ip = vultr_instance.my_instance.main_ip
}


resource "vultr_dns_record" "cname" {
    domain = "${vultr_dns_domain.my_domain.id}"
    name = "www"
    data = "${vultr_dns_domain.my_domain.id}"
    type = "CNAME"
}