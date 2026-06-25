variable "project" {
  description = "Nom court du projet"
  type        = string
  default     = "shopeasy"
}
variable "environment" {
  description = "Nom de l’environnement"
  type        = string
  default     = "dev"
}
variable "location" {
  description = "Region Azure cible"
  type        = string
  default     = "spaincentral"
}
variable "admin_username" {
  description = "Utilisateur administrateur Linux"
  type        = string
  default     = "azureuser"
}
variable "ssh_public_key_path" {
  description = "Chemin local vers la cle publique SSH"
  type        = string
}
variable "allowed_ssh_cidr" {
  description = "CIDR autorise pour SSH"
  type        = string
}
