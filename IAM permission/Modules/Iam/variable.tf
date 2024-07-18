variable "subscription_id" {
  description = "The subscription ID where the resource group is located."
  type        = string
}

variable "resource_group_id" {
  description = "The resource group ID to assign the role."
  type        = string
}

variable "role_definition_name" {
  description = "The name of the role definition to assign."
  type        = string
}

variable "principal_id" {
  description = "The Principal ID to assign the role to."
  type        = string
}
