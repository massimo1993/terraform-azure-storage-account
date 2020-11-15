resource azurerm_storage_queue storage_queue {
  count = length(var.queue_names)
  name  = var.queue_names[count.index]

  storage_account_name = azurerm_storage_account.storage_account.name
}
