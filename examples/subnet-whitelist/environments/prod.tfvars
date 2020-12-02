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

network_rules = {
  allow-snet-prod-033 = {
    default_action = "Deny"
    bypass_list    = ["AzureServices"]

    ip_rules = []

    subnets = {
      resource_group  = "rg-vnet-prod-001"
      virtual_network = "vnet-prod-001"
      subnet_name     = "snet-prod-033"
    }
  }
}

container_names = ["stocks", "covid"]
