locals {
  infrastructure_resource_group_name = join("-", [var.resource_group_name, "managed"])
  container_app_environment_name     = var.container_app_environment_name
  log_analytics_workspace_name       = var.log_analytics_workspace_name
  resource_group_name                = var.resource_group_name
  location                           = var.location
  tags                               = var.tags
}

resource "azurerm_resource_group" "resource_group" {
  name     = local.resource_group_name
  location = local.location
  tags     = local.tags
}

module "cae" {
  source                             = "./modules/container_app_environment"
  infrastructure_subnet_id           = module.virtual_network.app_subnet_id
  infrastructure_resource_group_name = local.infrastructure_resource_group_name
  location                           = local.location
  log_analytics_workspace_name       = local.log_analytics_workspace_name
  container_app_environment_name     = local.container_app_environment_name
  resource_group_name                = azurerm_resource_group.resource_group.name

  tags = local.tags
}

module "virtual_network" {
  source               = "./modules/virtual_network"
  resource_group_name  = azurerm_resource_group.resource_group.name
  location             = local.location
  virtual_network_name = var.virtual_network_name
  address_space        = var.virtual_network_address_space
  subnets              = var.virtual_network_subnets

  tags = local.tags
}
