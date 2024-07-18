terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_subscription" "primary" {
  subscription_id = var.subscription_id
}

data "azurerm_client_config" "example" {
}

resource "azurerm_role_assignment" "resource_group" {
  scope                = var.resource_group_id
  role_definition_name = var.role_definition_name
  principal_id         = var.principal_id
}
