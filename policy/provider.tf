# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "2.90.0"
#     }
#   }
# }

provider "azurerm" {
  features {}
  # Configuration options
  subscription_id = "543cad16-cab9-41fa-b9dc-e30f40e2b673"
  client_id       = "e5b2d3ec-6355-4805-92d1-2476ceeb9abe"
  client_secret   = "~VJ8Q~ozaUsiPSikvklwc5IP7OkcS5tgM4DVxb14"
  tenant_id       = "cdc1d3d2-2bb9-498f-8206-21ac0b3ffa65"
}