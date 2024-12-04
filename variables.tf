variable "container_app_environment_name" {
  description = "The name of the container app environment."
  type        = string
}

variable "location" {
  description = "The location in which to create the resources."
  type        = string
}

variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics workspace."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources."
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
}

variable "virtual_network_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "virtual_network_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "virtual_network_subnets" {
  description = "A map of subnets to create in the virtual network."
  type = map(object({
    address_prefix = string
    delegation = list(object({
      name                    = string
      service_delegation_name = string
      actions                 = list(string)
    }))
  }))
}
