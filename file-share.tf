resource azurerm_storage_share file_share {
  count = length(var.file_share_names)
  name  = var.file_share_names[count.index]

  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = var.quota
}

resource azurerm_storage_share_directory file_share_directory {
  for_each = {
    for index, map in var.directory_mapping : index => map
  }

  name                 = each.value.directory
  share_name           = each.value.share
  storage_account_name = azurerm_storage_account.storage_account.name

  depends_on = [azurerm_storage_share.file_share]
}
