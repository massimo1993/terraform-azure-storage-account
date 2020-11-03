output name {
  description = "Generated name for the storage account."
  value       = azurerm_storage_account.storage_account.name
}

output id {
  description = "The ID of the storage account."
  value       = azurerm_storage_account.storage_account.id
}

output primary_blob_endpoint {
  description = "The endpoint URL for blob storage in the primary location."
  value       = azurerm_storage_account.storage_account.primary_blob_endpoint
}

output secondary_blob_endpoint {
  description = "The endpoint URL for blob storage in the secondary location."
  value       = azurerm_storage_account.storage_account.secondary_blob_endpoint
}

output primary_queue_endpoint {
  description = "The endpoint URL for queue storage in the primary location."
  value       = azurerm_storage_account.storage_account.primary_queue_endpoint
}

output secondary_queue_endpoint {
  description = "The endpoint URL for queue storage in the secondary location."
  value       = azurerm_storage_account.storage_account.secondary_queue_endpoint
}

output primary_table_endpoint {
  description = "The endpoint URL for table storage in the primary location."
  value       = azurerm_storage_account.storage_account.primary_table_endpoint
}

output secondary_table_endpoint {
  description = "The endpoint URL for table storage in the secondary location."
  value       = azurerm_storage_account.storage_account.secondary_table_endpoint
}

output primary_file_endpoint {
  description = "The endpoint URL for file storage in the primary location."
  value       = azurerm_storage_account.storage_account.primary_file_endpoint
}

output secondary_file_endpoint {
  description = "The endpoint URL for file storage in the secondary location."
  value       = azurerm_storage_account.storage_account.secondary_file_endpoint
}

output primary_dfs_endpoint {
  description = "The endpoint URL for DFS storage in the primary location."
  value       = azurerm_storage_account.storage_account.primary_dfs_endpoint
}

output secondary_dfs_endpoint {
  description = "The endpoint URL for DFS storage in the secondary location."
  value       = azurerm_storage_account.storage_account.secondary_dfs_endpoint
}

output primary_web_endpoint {
  description = "The endpoint URL for web storage in the primary location."
  value       = azurerm_storage_account.storage_account.primary_web_endpoint
}

output secondary_web_endpoint {
  description = "The endpoint URL for web storage in the secondary location."
  value       = azurerm_storage_account.storage_account.secondary_web_endpoint
}

output primary_access_key {
  description = "The primary access key for the storage account."
  value       = azurerm_storage_account.storage_account.primary_access_key
}

output secondary_access_key {
  description = "The secondary access key for the storage account."
  value       = azurerm_storage_account.storage_account.secondary_access_key
}

output primary_connection_string {
  description = "The connection string associated with the primary location."
  value       = azurerm_storage_account.storage_account.primary_connection_string
}

output secondary_connection_string {
  description = "The connection string associated with the secondary location."
  value       = azurerm_storage_account.storage_account.secondary_connection_string
}
