terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }
  subscription_id = "4a12acc1-35fb-455f-84dd-d790daaf8781"
}

module "resource_group_storage" {
  source               = "LevAndrii/rgs/azurerm"
  version              = "1.0.0"
  rg_name              = "levandrii-tfmodule-test"
  rg_location          = "West Europe"
  storage_account_name = "tfmoduletestsa2025"
}
