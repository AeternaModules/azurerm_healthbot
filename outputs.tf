output "healthbots" {
  description = "All healthbot resources"
  value       = azurerm_healthbot.healthbots
}
output "healthbots_bot_management_portal_url" {
  description = "List of bot_management_portal_url values across all healthbots"
  value       = [for k, v in azurerm_healthbot.healthbots : v.bot_management_portal_url]
}
output "healthbots_location" {
  description = "List of location values across all healthbots"
  value       = [for k, v in azurerm_healthbot.healthbots : v.location]
}
output "healthbots_name" {
  description = "List of name values across all healthbots"
  value       = [for k, v in azurerm_healthbot.healthbots : v.name]
}
output "healthbots_resource_group_name" {
  description = "List of resource_group_name values across all healthbots"
  value       = [for k, v in azurerm_healthbot.healthbots : v.resource_group_name]
}
output "healthbots_sku_name" {
  description = "List of sku_name values across all healthbots"
  value       = [for k, v in azurerm_healthbot.healthbots : v.sku_name]
}
output "healthbots_tags" {
  description = "List of tags values across all healthbots"
  value       = [for k, v in azurerm_healthbot.healthbots : v.tags]
}

