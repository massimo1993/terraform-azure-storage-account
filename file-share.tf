resource azurerm_storage_share file_share {
  for_each = toset(var.file_share_names)
  name     = each.value

  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = var.quota
}

resource azurerm_storage_share_directory file_share_directory {
  for_each = {
    for dir in var.directory_mapping : dir.directory => dir
  }

  name                 = each.value.directory
  share_name           = each.value.share
  storage_account_name = azurerm_storage_account.storage_account.name

  depends_on = [azurerm_storage_share.file_share]
}
