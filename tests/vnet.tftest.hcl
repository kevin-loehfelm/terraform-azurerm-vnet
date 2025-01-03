variables {
  label    = "vnet-test"
  location = "eastus"
}

provider "azurerm" {
  features {}
}

run "rg_location_validation" {
  command = plan

  assert {
    condition     = azurerm_resource_group.network.location == "eastus"
    error_message = "Supported location(s): eastus"
  }
}

