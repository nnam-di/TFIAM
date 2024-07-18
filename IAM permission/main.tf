module "role_assignment" {
  source                = "../Modules/Iam"  # Path to the module directory
  resource_group_id     = var.resource_group_id
  role_definition_name  = var.role_definition_name
  principal_id          = var.principal_id
}

data "azurerm_client_config" "example" {
}

variable "resource_group_id" {
  description = "The ID of the resource group."
  type        = string
  default     = "/subscriptions/<subscription_id>/resourceGroups/<resource_group_name>"
}

variable "role_definition_name" {
  description = "The name of the role definition to assign."
  type        = string
  default     = "Contributor"
}

variable "principal_id" {
  description = "The Principal ID to assign the role to."
  type        = string
  default     = data.azurerm_client_config.example.object_id
}

output "resource_group_role_assignment_id" {
  value = module.role_assignment.resource_group_role_assignment_id
}