output "app_subnet_id" {
  description = "The ID of the subnet with container app delegation."
  value       = tolist([for subnet in azurerm_subnet.subnet : subnet.id if any(subnet.delegation[*].service_delegation == "Microsoft.App/environments")])[0]
}
