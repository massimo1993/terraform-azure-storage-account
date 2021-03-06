info = {
  project     = "Gemini"
  environment = "Dev"
  sequence    = "001"
}

tags = {
  source  = "Terraform"
  owner   = "Massimo Cannavo"
}

region = "South Central US"

container_names = ["stocks", "covid"]

file_mapping = [
  {
    path      = "data"
    pattern   = "stock-data*.json"
    container = "stocks"
  },
  {
    path      = "data"
    pattern   = "covid*.json"
    container = "covid"
  }
]
