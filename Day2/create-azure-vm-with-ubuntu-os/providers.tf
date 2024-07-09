terraform {
	required_providers {
		azurerm = {
      			source = "hashicorp/azurerm"
      			version = "3.111.0"
		}
	}
}

provider "azurerm" {
	subscription_id = "82dfc44c-fa64-4e95-a9a9-2777d9258514"
	features {}
}
