# Core Variables
app-name                  = "oag-prod"
environment_tag           = "prod"
region1                   = "canadacentral"
subscription_id_hub       = ""
subscription_id_spoke     = ""

# Spoke Networking
region1-vnet1-address-space = "10.10.8.0/21"
region1-vnet1-snet1-range   = "10.10.11.0/24"

# vWAN
vwan-region1-hub1-prefix1 = "10.10.0.0/21"

# VMs
vmfunc        = "testing"
vmsize        = "Standard_B4ms"
adminusername = "oagadmin"
adminpassword = "oagadmin123"