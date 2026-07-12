output "healthbots_id" {
  description = "Map of id values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.id }
}
output "healthbots_bot_management_portal_url" {
  description = "Map of bot_management_portal_url values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.bot_management_portal_url }
}
output "healthbots_location" {
  description = "Map of location values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.location }
}
output "healthbots_name" {
  description = "Map of name values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.name }
}
output "healthbots_resource_group_name" {
  description = "Map of resource_group_name values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.resource_group_name }
}
output "healthbots_sku_name" {
  description = "Map of sku_name values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.sku_name }
}
output "healthbots_tags" {
  description = "Map of tags values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.tags }
}

