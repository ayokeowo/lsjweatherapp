terraform {
  backend "azurerm" {
    resource_group_name  = "terraformthings"
    storage_account_name = "terraformthingsstorage"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}