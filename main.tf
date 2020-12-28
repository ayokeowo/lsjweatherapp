provider "azurerm" {
  version = "2.41.0"
  features {
    
  }
}

resource "azurerm_resource_group" "tf_test" {
  name = "tforming"
  location = "West Europe"
}

resource "azurerm_container_group" "tforming" {
  name = "weatherapi"
  location = azurerm_resource_group.tf_test.location
  resource_group_name = azurerm_resource_group.tf_test.name

  ip_address_type     = "public"
  dns_name_label      = "octo99weatherapi"
  os_type             = "Linux"

  container {
    name   = "weatherapi"
    image  = "octo99/weatherapi"
    cpu    = "0.5"
    memory = "1"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }


}
