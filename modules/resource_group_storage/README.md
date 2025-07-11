# terraform-azurerm-resource_group_storage

A Terraform module to provision an Azure Resource Group and a Storage Account.

## Usage Example

module "rg_storage" {
  source  = "app.terraform.io/levandrii_study/resource_group_storage/azurerm"
  version = "1.0.7"

  resource_group_name     = "example-rg"
  location                = "East US"
  storage_account_name    = "examplestorageacct"
}

## Input Variables

| Name                  | Type   | Required | Description                              |
|-----------------------|--------|----------|------------------------------------------|
| resource_group_name   | string | yes      | The name of the Azure Resource Group     |
| location              | string | yes      | The Azure location for the Resource Group|
| storage_account_name  | string | yes      | Unique name for the Storage Account      |

## Outputs

| Name                 | Description                               |
|----------------------|-------------------------------------------|
| resource_group_id    | The ID of the created Azure Resource Group |
| storage_account_id   | The ID of the created Storage Account      |

## Requirements

- Terraform >= 1.0.0
- AzureRM Provider >= 3.0.0

## Notes

- The Storage Account name must be globally unique across Azure.
- Make sure you have authenticated with the AzureRM provider before running the module.

## License

This module is distributed under the MIT License. See the LICENSE file for details.