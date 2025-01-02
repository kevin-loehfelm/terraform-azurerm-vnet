output "subnets" {
  value = azurerm_virtual_network.this.subnet[*]
}