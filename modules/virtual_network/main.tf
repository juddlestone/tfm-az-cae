resource "azurerm_virtual_network" "virtual_network" {
  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  for_each             = var.subnets
  name                 = each.key
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = each.value.address_prefix

  dynamic "delegation" {
    for_each = each.value.delegation
    content {
      name = delegation.value.name
      service_delegation {
        name    = delegation.value.service_delegation_name
        actions = delegation.value.actions
      }
    }
  }
}

locals {
  subnets = {
    subnet1 = {
      address_prefix = "10.0.1.0/24"
      delegation     = []
    }
    subnet2 = {
      address_prefix = "10.0.2.0/24"
      delegation     = []
    }
    subnet3 = {
      address_prefix = "10.0.3.0/24"
      delegation = [
        {
          name    = "myDelegation"
          actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
        }
      ]
    }
    subnet4 = {
      address_prefix = "10.0.4.0/24"
      delegation     = []
    }
  }
}
