terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.90.0"
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
}