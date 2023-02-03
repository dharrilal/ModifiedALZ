# Use variables to customize the deployment

variable "root_id" {
  type    = string
  default = "OAGAlberta"
}

variable "root_name" {
  type    = string
  default = "OAG Alberta"
}

variable "deploy_management_resources" {
  type    = bool
  default = true
}

variable "log_retention_in_days" {
  type    = number
  default = 30
}

variable "security_alerts_email_address" {
  type    = string
  default = "my_valid_security_contact@replace_me" # Replace this value with your own email address.
}

variable "management_resources_location" {
  type    = string
  default = "canadacentral"
}

variable "management_resources_tags" {
  type = map(string)
  default = {
    Environment = "Prod"
  }
}