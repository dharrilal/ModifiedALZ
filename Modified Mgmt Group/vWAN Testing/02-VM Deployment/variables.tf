# Variables
variable "subscription_id" {
  type = string
}
variable "app-name" {
  type        = string
  description = "Name to be used for resources in this application"
}
variable "environment_tag" {
  type        = string
  description = "Environment tag value"
}
variable "region1" {
  type        = string
  description = "location of the deployment"
}
variable "vmsize" {
  type        = string
  description = "vm size"
}
variable "adminusername" {
  type        = string
  description = "admin username"
}
variable "adminpassword" {
  type        = string
  description = "admin password"
}