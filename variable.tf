# Token de acesso via API - DIGITAL OCEAN
variable "do_token" {
  description = "API KEY"
  default     = "02bc640ba88cfe97c37838dfabd6575b66b4db0c4ac65376040e3e25ff31af4a"
}

# Token de acesso via API - CLOUDFLARE
variable "cloudflare_api_key" {
  description = "API KEY"
  default     = "02bc640ba88cfe97c37838dfabd6575b66b4db0c4ac65376040e3e25ff31af4a"
}

# Habilitando ou Desabilitando Backups / True para habilitar
variable "do_backups" {
  description = "Backups"
  default     = "false"
}
