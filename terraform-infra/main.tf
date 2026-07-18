resource "azurerm_resource_group" "rg" {
  name     = "{var.environment}-{var.business_unit}-mayur"
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = "{var.environment}-{var.business_unit}-vnet-mayur"
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "{var.environment}-{var.business_unit}-{var.subnet_name}-mayur"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.sunet_prefix
}

resource "azurerm_network_security_group" "nsg" {
  name                = "{var.environment}-{var.business_unit}-nsg-mayur"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_rule" "allow_http" {
  name                        = "Allow-HTTP"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.nsg.name
}
