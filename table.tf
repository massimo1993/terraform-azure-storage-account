resource azurerm_storage_table storage_table {
  count = length(var.table_names)
  name  = var.table_names[count.index]

  storage_account_name = azurerm_storage_account.storage_account.name
}

#resource azurerm_storage_table_entity table_entity {
  #storage_account_name = azurerm_storage_account.storage_account.name
  #table_name           = azurerm_storage_table.storage_table

  #partition_key = var.partition_key
  #row_key       =

  #entity = {

  #}
#}
