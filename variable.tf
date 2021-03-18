# Token de acesso via API - DIGITAL OCEAN
variable "vultr_token" {
  description = "API KEY"
  default     = "sua-api-key"
}

# Habilitando ou Desabilitando Backups / True para habilitar
variable "vultr_backups" {
  description = "Backups"
  default     = "false"
}

# Dominio DNS
variable "dns_domain" {
  default     = "exemplo.com"
}


