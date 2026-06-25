output "resource_group_name" {
  value = azurerm_resource_group.main.name
}
output "load_balancer_public_ip" {
  value = azurerm_public_ip.lb.ip_address
}

output "web_vm_public_ips" {
  value = azurerm_public_ip.web[*].ip_address
}
output "storage_account_name" {
  value = azurerm_storage_account.docs.name
}
