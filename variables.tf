variable "resource_group_name" {
  type = string
  description = "The name of the Azure resource group where the AKS cluster will be created."
  default = "new-varun-aks-rg"
}

variable "location" {
  type = string
  description = "The Azure region where the AKS cluster will be created."
  default = "Central US"
}

# variable "subscription_id"{
#   type = string
#   description = "The Azure subscription ID."
#   default = "606e824b-aaf7-4b4e-9057-b459f6a4436d"

# }
# variable "client_id"{
#   type = string
#   description = "The Azure client ID."
#   default = "62ba6d2f-4192-4cf5-a00d-42328f7d7dfd"
# }
# variable "client_secret"{
#   type = string
#   description = "The Azure client secret."
#   default = "nJP8Q~_EqLNHRP2WxOe.b1HjVrKytOXVprvW1ca9"
# }

variable "dns_prefix" {
  type = string
  description = "The DNS prefix for the AKS cluster."
  default = "aks-cluster-v1"
}

variable "vm_size" {
  type = string
  default = "Standard_D2s_v3"
  description = "The VM size for the AKS cluster nodes."
}

variable "node_count" {
  type = number
  default = 2
  description = "The number of nodes in the AKS cluster."
}