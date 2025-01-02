output "subnets" {
  description = "list of vnet subnets"
  value = azurerm_virtual_network.this.subnet[*]
}