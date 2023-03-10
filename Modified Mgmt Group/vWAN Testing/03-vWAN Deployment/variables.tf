# Variables
variable "subscription_id" {
  type = string
}
variable "app-name" {
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
variable "vwan-region1-hub1-prefix1" {
  type        = string
  description = "Address space for vWAN Location 1 Hub 1"
}