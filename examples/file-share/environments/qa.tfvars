info = {
  project     = "Gemini"
  environment = "QA"
  sequence    = "001"
}

tags = {
  source  = "Terraform"
  owner   = "Massimo Cannavo"
}

region = "South Central US"

file_share_names = ["data"]

directory_mapping = [
  {
    share     = "data"
    directory = "stocks"
  },
  {
    share     = "data"
    directory = "covid"
  }
]
