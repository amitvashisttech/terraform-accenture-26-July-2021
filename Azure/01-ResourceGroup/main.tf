provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = "terraform-first-demo-rg"
  location = "eastus"
}

