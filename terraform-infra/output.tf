output "resource_group_name" {
  value = azurerm_resource_group.rg.name

}
output "resource_group_id" {
  value = azurerm_resource_group.rg.id

}
output "virtual_network_name" {
  value = azurerm_virtual_network.vnet.name

}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id

}
output "subnet_id" {
  value = azurerm_subnet.subnet.id

}
output "nsg_id" {
  value = azurerm_network_security_group.nsg.id

}
