variable "address_space" {
  description = "The address space that is used the virtual network."
  type        = list(string)
}

variable "location" {
  description = "The location in which to create the resources."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources."
  type        = string
}

variable "subnets" {
  description = "A map of subnets to create in the virtual network."
  type = map(object({
    address_prefix = list(string)
    delegation = list(object({
      name    = string
      actions = optional(list(string))
    }))
  }))
}


variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
}

variable "virtual_network_name" {
  description = "The name of the virtual network."
  type        = string
}
