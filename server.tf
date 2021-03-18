##############################################################################
# Create a web server
resource "vultr_instance" "my_instance" {
    plan = "vc2-1c-1gb"
    region = "mia"
    os_id = "270" 
    label = "my-instance-label"
    tag = "my-instance-tag"
    hostname = "server"
    ssh_key_ids = [vultr_ssh_key.my_ssh_key.id]
    enable_ipv6 = true
    backups = "false"
    ddos_protection = false
    activation_email = false
}









