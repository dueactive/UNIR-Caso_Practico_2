variable "resource_group_name" {
  default = "rg-UNIR"
}

variable "location_name" {
  default = "uksouth"
}

variable "network_name" {
  default = "vnet1"
}

variable "subnet_name" {
  default = "subnet1"
}

variable "acr_name" {
  default = "acrunir"
}

variable "cluster_name" {
  default     = "aksunir"
  description = "AKS name in Azure"
}
variable "kubernetes_version" {
  default     = "1.25.5"
  description = "Kubernetes version"
}
variable "system_node_count" {
  default     = 1
  description = "Number of AKS worker nodes"
}


