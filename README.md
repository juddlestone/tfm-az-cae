<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cae"></a> [cae](#module\_cae) | ./modules/container_app_environment | n/a |
| <a name="module_virtual_network"></a> [virtual\_network](#module\_virtual\_network) | ./modules/virtual_network | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_app_environment_name"></a> [container\_app\_environment\_name](#input\_container\_app\_environment\_name) | The name of the container app environment. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location in which to create the resources. | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_name"></a> [log\_analytics\_workspace\_name](#input\_log\_analytics\_workspace\_name) | The name of the Log Analytics workspace. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the resources. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources. | `map(string)` | n/a | yes |
| <a name="input_virtual_network_address_space"></a> [virtual\_network\_address\_space](#input\_virtual\_network\_address\_space) | The address space for the virtual network. | `list(string)` | n/a | yes |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | The name of the virtual network. | `string` | n/a | yes |
| <a name="input_virtual_network_subnets"></a> [virtual\_network\_subnets](#input\_virtual\_network\_subnets) | A map of subnets to create in the virtual network. | <pre>map(object({<br/>    address_prefix = list(string)<br/>    delegation = list(object({<br/>      name    = string<br/>      actions = optional(list(string))<br/>    }))<br/>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->