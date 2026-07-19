terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "ntms-tfstate-rg"
    storage_account_name = "ntmstfstatestorage"
    container_name       = "mayur" #use your name - tell me the name of your container
    key                  = "ntms.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "1dc07c30-4f02-476a-98b4-89b0d8304e01"
}