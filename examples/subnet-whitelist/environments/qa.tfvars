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

subnet_whitelist = [
  {
    resource_group  = "rgVnetD01"
    virtual_network = "vnetD01"
    subnet_name     = "snetD066"
  }
]

container_names = ["stocks", "covid"]
