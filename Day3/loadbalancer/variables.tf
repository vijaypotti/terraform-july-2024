variable "resource_group_name" {
  type = string
  default = "tektutor-resource-group"
}

variable "location" {
  type = string
  default = "eastus2"
}

variable "vm_count" {
  type = number
}
