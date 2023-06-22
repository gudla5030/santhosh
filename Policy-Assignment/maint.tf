data "azurerm_management_group" "example" {
  name = "av-prod"
}
data "azurerm_policy_set_definition" "example" {
  display_name = "vm-policy-Hitrust20"
}
resource "azurerm_management_group_policy_assignment" "example" {
  name                 = "vm-policy-Hitrust21"
  policy_definition_id = data.azurerm_policy_set_definition.example.id
  management_group_id  = data.azurerm_management_group.example.id
  description          = "Assignment of the VM HiTrust initiative to Managment."
  display_name         = "vm-policy-Hitrust21"
  enforce = false
  parameters = jsonencode({
  "effect": {
    "value": "Disabled"
  }
})
}