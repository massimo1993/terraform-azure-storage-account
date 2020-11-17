locals {
  table_mapping = flatten([
    for map in var.table_mapping : [
      for data in jsondecode(file("${path.root}/${map.file}")) : {
        table         = map.table
        partition_key = data[map.partition_key]
        row_key       = data[map.row_key]
        entity        = data
      }
    ]
  ])
}

resource azurerm_storage_table storage_table {
  count = length(var.table_names)
  name  = var.table_names[count.index]

  storage_account_name = azurerm_storage_account.storage_account.name
}

resource azurerm_storage_table_entity table_entity {
  for_each = {
    for index, map in local.table_mapping : index => map
  }

  storage_account_name = azurerm_storage_account.storage_account.name
  table_name           = each.value.table

  partition_key = each.value.partition_key
  row_key       = each.value.row_key

  entity = each.value.entity

  depends_on = [azurerm_storage_table.storage_table]
}
