## <https://www.terraform.io/docs/providers/azurerm/index.html>
provider "azurerm" {
  features {}
}

resource "azurerm_public_ip" "pubip" {
  name                = "windows-pubip"
  resource_group_name = "lab-rg"
  location            = "eastus"
  allocation_method   = "Static"
  }
