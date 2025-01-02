# resource: resource group for network resources
resource "azurerm_resource_group" "network" {
  name     = "${var.label}-network"
  location = var.location
}

# resource: virtual network
resource "azurerm_virtual_network" "this" {
  name                = "vnet-${var.label}"
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name
  address_space       = ["10.0.0.0/22"]
  #dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet {
    name             = "subnet2"
    address_prefixes = ["10.0.2.0/24"]
  }

  tags = {
    resourceType = "Virtual Network"
  }
}