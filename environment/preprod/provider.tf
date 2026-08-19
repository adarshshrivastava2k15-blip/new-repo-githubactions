terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-adarsh"
    storage_account_name = "terraformstatefilesave "
    container_name       = "adarshcontainertfstate"
    key                  = "tfstate"
  }
}
provider "azurerm" {
  features {}
}