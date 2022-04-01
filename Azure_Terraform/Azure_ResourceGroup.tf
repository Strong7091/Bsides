## <https://www.terraform.io/docs/providers/azurerm/index.html>
provider "azurerm" {
  features {}
}

## <https://www.terraform.io/docs/providers/azurerm/r/resource_group.html>
resource "azurerm_resource_group" "rg" {
  name     = "lab-rg"
  location = "eastus"
}

