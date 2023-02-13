# Variables
variable "subscription_id" {
  type = string
}
variable "lab-name" {
  type        = string
  description = "Name to be used for resources in this lab"
}
variable "environment_tag" {
  type        = string
  description = "Environment tag value"
}
variable "region1" {
  type        = string
  description = "location 1 for the lab"
}

variable "region1-vnet1-address-space" {
  type        = string
  description = "VNET address space for region 1 vnet"
}
variable "region1-vnet1-snet1-range" {
  type        = string
  description = "Subnet address space for region 1 subnet"

}