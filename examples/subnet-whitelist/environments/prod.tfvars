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

subnet_whitelist = [
  {
    resource_group  = "rgVnetP01"
    virtual_network = "vnetP01"
    subnet_name     = "snetP066"
  }
]

container_names = ["stocks", "covid"]
