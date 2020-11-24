resource azurerm_storage_container container {
  for_each = toset(var.container_names)
  name     = each.value

  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = var.access_type
}

resource azurerm_storage_data_lake_gen2_filesystem data_lake_filesystem {
  for_each = toset(var.data_lake_filesystem_names)
  name     = each.value

  storage_account_id = azurerm_storage_account.storage_account.id
}
