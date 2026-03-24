terraform {
  required_version = ">= 1.14.0"

  backend "azurerm" {
    resource_group_name  = "rg-demo-hubspoke"
    storage_account_name = "demoitfstate"
    container_name       = "tfstate"
    key                  = "hubspoke.terraform.tfstate"
    use_azuread_auth     = true
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}