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

network_rules = {
  allow-snet-qa-033 = {
    default_action = "Deny"
    bypass_list    = ["AzureServices"]

    ip_rules = []

    subnets = {
      resource_group  = "rg-vnet-qa-001"
      virtual_network = "vnet-qa-001"
      subnet_name     = "snet-qa-033"
    }
  }
}

container_names = ["stocks", "covid"]
