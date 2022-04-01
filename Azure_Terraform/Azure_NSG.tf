## <https://www.terraform.io/docs/providers/azurerm/index.html>
provider "azurerm" {
  features {}
}

resource "azurerm_network_security_group" "nsg" {
  name                = "lab-nsg"
  location            = "eastus"
  resource_group_name = "lab-rg"

  security_rule {
    name                       = "replace_me"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
