variable "project" {
  description = "Nom court du projet"
  type        = string
  default     = "shopeasy"
}
variable "environment" {
  description = "Nom de l’environnement"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "recette", "prod"], var.environment)
    error_message = "L'environnement doit etre dev, test, recette ou prod."
  }
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

variable "owner" {
  description = "Proprietaire des ressources"
  type        = string
  default     = "formation"
}

variable "cost_center" {
  description = "Centre de cout applique aux tags"
  type        = string
  default     = "cloud-training"
}

variable "vm_count" {
  description = "Nombre de machines virtuelles web a creer"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "Taille Azure des machines virtuelles web"
  type        = string
  default     = "Standard_B2als_v2"
}

variable "vnet_address_space" {
  description = "Plage d'adresses du VNet"
  type        = list(string)
  default     = ["10.20.0.0/16"]
}

variable "web_subnet_prefixes" {
  description = "Plages d'adresses du subnet web"
  type        = list(string)
  default     = ["10.20.1.0/24"]
}
