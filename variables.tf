variable "cognitive_account_connection_account_keys" {
  description = <<EOT
Map of cognitive_account_connection_account_keys, attributes below
Required:
    - account_key
    - account_key_key_vault_id (optional, alternative to account_key)
    - account_key_key_vault_secret_name (optional, alternative to account_key)
    - category
    - cognitive_account_id
    - metadata
    - name
    - target
EOT

  type = map(object({
    account_key                       = string
    account_key_key_vault_id          = optional(string)
    account_key_key_vault_secret_name = optional(string)
    category                          = string
    cognitive_account_id              = string
    metadata                          = map(string)
    name                              = string
    target                            = string
  }))
}

