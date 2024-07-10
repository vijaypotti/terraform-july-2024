variable "cluster_name" {
  type = string
  default = "tektutor-aks-cluster"
}

variable "resource_group_name" {
  type = string
  default = "tektutor-resource-group"
}

variable "location" {
  default = "eastus2"
}
