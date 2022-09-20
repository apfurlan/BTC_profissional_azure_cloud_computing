provider "azurerm" {
    tenant_id       = var.tenant_id
    subscription_id = var.subscription_id
    client_id       = var.client_id
    client_secret   = var.clientSecret
    skip_provider_registration = true
    features {}
}

# terraform {
#     required_providers {
#       azurerm = {
#         #source = "hashicorp/azurerm"
#         version = "3.17.0"
#       }
#     }
# }