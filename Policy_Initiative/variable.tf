variable "policy_set_def_name" {
    type = string
    description = "Name of the Policy Set Definition name as ex Policy-Network"
}
variable "policy_type" {
    type = string
    description = "Name of the Policy Type name as ex Custom"
    default = "Custom"
}
variable "display_name" {
    type = string
    description = "Name of the Policy Display name as ex Policy-Network"
}
variable "policy_set_description" {
    type = string
    description = "Name of the Policy Set Description as ex - Policy related to Network Objects"
}
variable "category" {
  type = string
  description = "Name of the Policy category as ex Network or Tag"
}
variable "def_ids" {
  type = map (string)
  description = "Give the policy definition ID's to make it as group for Initiative"
}
variable "managment_group_id" { }