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
