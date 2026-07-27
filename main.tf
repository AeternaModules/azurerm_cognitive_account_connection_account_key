data "azurerm_key_vault_secret" "account_key" {
  for_each     = { for k, v in var.cognitive_account_connection_account_keys : k => v if v.account_key_key_vault_id != null && v.account_key_key_vault_secret_name != null }
  name         = each.value.account_key_key_vault_secret_name
  key_vault_id = each.value.account_key_key_vault_id
}
resource "azurerm_cognitive_account_connection_account_key" "cognitive_account_connection_account_keys" {
  for_each = var.cognitive_account_connection_account_keys

  account_key          = each.value.account_key != null ? each.value.account_key : try(data.azurerm_key_vault_secret.account_key[each.key].value, null)
  category             = each.value.category
  cognitive_account_id = each.value.cognitive_account_id
  metadata             = each.value.metadata
  name                 = each.value.name
  target               = each.value.target
}

