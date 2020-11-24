resource azurerm_storage_queue storage_queue {
  for_each = toset(var.queue_names)
  name     = each.value

  storage_account_name = azurerm_storage_account.storage_account.name
}
