terraform {
  backend "azurerm" {
    resource_group_name  = "tforming"
    storage_account_name = "tformingbackend"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}