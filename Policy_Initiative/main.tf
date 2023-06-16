data "azurerm_management_group" "example" {
  name = var.managment_group_id
}

###########Policy initiative creation###################
resource "azurerm_policy_set_definition" "hitrust-policy-initiative" {
  name         = var.policy_set_def_name
  policy_type  = var.policy_type
  display_name = var.display_name
  description  = var.policy_set_description
  management_group_id = data.azurerm_management_group.example.id
  metadata    = <<METADATA
    {
    "category": "${var.category}"
    }
	METADATA
    dynamic "policy_definition_reference" {
        for_each = var.def_ids
        content {
        policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/${policy_definition_reference.key}"
        parameter_values = policy_definition_reference.value
        }
   }
}