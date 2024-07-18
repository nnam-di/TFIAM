output "resource_group_role_assignment_id" {
  description = "The ID of the resource group role assignment."
  value       = azurerm_role_assignment.resource_group.id
}
