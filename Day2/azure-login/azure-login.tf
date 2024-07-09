terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.111.0"
    }
  }
}

provider "azurerm" {
	subscription_id = "replace-this-with-your-azure-subscription-id"
	features {}
}



