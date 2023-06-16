module "Policy_Initiative_HITRUST" {
  source = "../Policy_Initiative"
  managment_group_id = "test-av"
  policy_set_def_name = "vm-policy-Hitrust"
  display_name = "vm-policy-Hitrust"
  policy_set_description = "Policy related to virtualmachine-Hitrust  Objects"
  category = "vm Compliance"
  def_ids = {
    "0961003e-5a0a-4549-abde-af6a37f2724d" = null, #Should we use deprecated builtins?
    "3c735d8a-a4ba-4a3a-b7cf-db7754cf57f4" = null,
 }
}
/*
module "Policy_Assignment"{
  source = "../Policy_assignment"
  #for_each = local.policy_defid_assign
    policy_assignment_name = "HITRUST-Assignment"
    policy_initiative_id = "/subscriptions/543cad16-cab9-41fa-b9dc-e30f40e2b673/providers/Microsoft.Authorization/policySetDefinitions/Policy-Hitrust"
    MgmtGrpID = "av-prod"
}
*/