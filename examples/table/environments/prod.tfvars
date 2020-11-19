info = {
  project     = "Gemini"
  environment = "Prod"
  sequence    = "001"
}

tags = {
  source  = "Terraform"
  owner   = "Massimo Cannavo"
}

region = "South Central US"

table_names = ["todo"]

table_mapping = [
  {
    table         = "todo"
    partition_key = "userId"
    row_key       = "id"
    file          = "todos.json"
  }
]
