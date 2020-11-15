resource azurerm_storage_container container {
  count = length(var.container_names)
  name  = var.container_names[count.index]

  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = var.access_type
}

resource azurerm_storage_data_lake_gen2_filesystem data_lake_filesystem {
  count = length(var.data_lake_filesystem_names)
  name  = var.data_lake_filesystem_names[count.index]

  storage_account_id = azurerm_storage_account.storage_account.id
}
