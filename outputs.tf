output "healthbots_id" {
  description = "Map of id values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.id if v.id != null && length(v.id) > 0 }
}
output "healthbots_bot_management_portal_url" {
  description = "Map of bot_management_portal_url values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.bot_management_portal_url if v.bot_management_portal_url != null && length(v.bot_management_portal_url) > 0 }
}
output "healthbots_location" {
  description = "Map of location values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.location if v.location != null && length(v.location) > 0 }
}
output "healthbots_name" {
  description = "Map of name values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.name if v.name != null && length(v.name) > 0 }
}
output "healthbots_resource_group_name" {
  description = "Map of resource_group_name values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "healthbots_sku_name" {
  description = "Map of sku_name values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "healthbots_tags" {
  description = "Map of tags values across all healthbots, keyed the same as var.healthbots"
  value       = { for k, v in azurerm_healthbot.healthbots : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

