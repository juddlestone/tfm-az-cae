output "app_subnet_id" {
  description = "The ID of the subnet for the application."
  value       = azurerm_subnet.subnet["snet-app"].id
}
