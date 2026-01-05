terraform {
  backend "azurerm" {
    resource_group_name  = "rg-ibrahim-neder-portfolio-terraform"
    storage_account_name = "ibrahimtfstate2025"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}