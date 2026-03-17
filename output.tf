output "resource_group_name" {
	description = "Resource group containing hub and spoke resources"
	value       = azurerm_resource_group.main.name
}

output "hub_vm_public_ip" {
	description = "Public IP address used to SSH into hub VM"
	value       = azurerm_public_ip.hub.ip_address
}

output "hub_vm_private_ip" {
	description = "Private IP of hub VM"
	value       = azurerm_network_interface.hub.private_ip_address
}

output "spoke_vm_private_ip" {
	description = "Private IP of spoke VM (no public IP)"
	value       = azurerm_network_interface.spoke.private_ip_address
}

output "ssh_hop_hint" {
	description = "Use this command pattern to SSH to spoke via hub"
	value       = "ssh -J ${var.admin_username}@${azurerm_public_ip.hub.ip_address} ${var.admin_username}@${azurerm_network_interface.spoke.private_ip_address}"
}

output "tfstate_resource_group_name" {
	description = "Resource group that contains the Terraform state storage"
	value       = azurerm_resource_group.main.name
}

output "tfstate_storage_account_name" {
	description = "Storage account name used for Terraform remote state"
	value       = azurerm_storage_account.tfstate.name
}

output "tfstate_container_name" {
	description = "Container name used for Terraform remote state"
	value       = azurerm_storage_container.tfstate.name
}

output "tfstate_backend_config_hint" {
	description = "Use these values in an azurerm backend block or -backend-config flags"
	value       = {
		resource_group_name  = azurerm_resource_group.main.name
		storage_account_name = azurerm_storage_account.tfstate.name
		container_name       = azurerm_storage_container.tfstate.name
		key                  = var.tfstate_key
	}
}
