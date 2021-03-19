// Token de acesso via API - DIGITAL OCEAN
variable "do_token" {
  description = "API KEY"
  default     = "insira-aqui"
}

// Habilitando ou Desabilitando Backups / True para habilitar
variable "do_backups" {
  description = "Backups"
  default     = "false"
}

// Dominio DNS
variable "dns_domain" {
  default     = "exemplo.com"
}


