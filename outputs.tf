output "cognitive_account_connection_account_keys_id" {
  description = "Map of id values across all cognitive_account_connection_account_keys, keyed the same as var.cognitive_account_connection_account_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_account_key.cognitive_account_connection_account_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognitive_account_connection_account_keys_account_key" {
  description = "Map of account_key values across all cognitive_account_connection_account_keys, keyed the same as var.cognitive_account_connection_account_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_account_key.cognitive_account_connection_account_keys : k => v.account_key if v.account_key != null && length(v.account_key) > 0 }
  sensitive   = true
}
output "cognitive_account_connection_account_keys_category" {
  description = "Map of category values across all cognitive_account_connection_account_keys, keyed the same as var.cognitive_account_connection_account_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_account_key.cognitive_account_connection_account_keys : k => v.category if v.category != null && length(v.category) > 0 }
}
output "cognitive_account_connection_account_keys_cognitive_account_id" {
  description = "Map of cognitive_account_id values across all cognitive_account_connection_account_keys, keyed the same as var.cognitive_account_connection_account_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_account_key.cognitive_account_connection_account_keys : k => v.cognitive_account_id if v.cognitive_account_id != null && length(v.cognitive_account_id) > 0 }
}
output "cognitive_account_connection_account_keys_metadata" {
  description = "Map of metadata values across all cognitive_account_connection_account_keys, keyed the same as var.cognitive_account_connection_account_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_account_key.cognitive_account_connection_account_keys : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "cognitive_account_connection_account_keys_name" {
  description = "Map of name values across all cognitive_account_connection_account_keys, keyed the same as var.cognitive_account_connection_account_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_account_key.cognitive_account_connection_account_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cognitive_account_connection_account_keys_target" {
  description = "Map of target values across all cognitive_account_connection_account_keys, keyed the same as var.cognitive_account_connection_account_keys"
  value       = { for k, v in azurerm_cognitive_account_connection_account_key.cognitive_account_connection_account_keys : k => v.target if v.target != null && length(v.target) > 0 }
}

