variable "container_app_environment_name" {
  description = "The name of the Container App Environment"
  type        = string
}

variable "infrastructure_resource_group_name" {
  description = "The name of the resource group in which the infrastructure resources for the Container App Environment will be created"
  type        = string
}

variable "infrastructure_subnet_id" {
  description = "The ID of the subnet in which the infrastructure resources for the Container App Environment will be created"
  type        = string
}

variable "location" {
  description = "The location of the Container App Environment"
  type        = string
}

variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics workspace to which the Container App Environment will be connected"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Container App Environment will be created"
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
}
