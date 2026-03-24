variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
}

variable "client_id" {
  description = "Service principal client ID"
  type        = string
  default     = null
}

variable "client_secret" {
  description = "Service principal client secret"
  type        = string
  default     = null
  sensitive   = true
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westeurope"
}

variable "prefix" {
  description = "Prefix used in resource names"
  type        = string
  default     = "lab"
}

variable "hub_vnet_cidr" {
  description = "Hub VNet CIDR"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "hub_subnet_cidr" {
  description = "Hub subnet CIDR"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "spoke_vnet_cidr" {
  description = "Spoke VNet CIDR"
  type        = list(string)
  default     = ["10.1.0.0/16"]
}

variable "spoke_subnet_cidr" {
  description = "Spoke subnet CIDR"
  type        = list(string)
  default     = ["10.1.1.0/24"]
}

variable "admin_username" {
  description = "Admin username for Linux VMs"
  type        = string
  default     = "azureuser"
}

variable "admin_ssh_public_key_path" {
  description = "Path to the SSH public key file used for the Linux VMs"
  type        = string
}

variable "hub_ssh_source_cidr" {
  description = "CIDR allowed to SSH to hub VM public IP. Use your public IP/32."
  type        = string
  default     = "0.0.0.0/0"
}

variable "vm_size" {
  description = "Size for both hub and spoke VMs"
  type        = string
  default     = "Standard_B1s"
}
