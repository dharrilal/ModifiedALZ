# Get the current client configuration from the AzureRM provider.
# This is used to populate the root_parent_id variable with the
# current Tenant ID used as the ID for the "Tenant Root Group"
# Management Group.

data "azurerm_client_config" "core" {}

# Declare the Azure landing zones Terraform module
# and provide a base configuration.

module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "3.1.2"

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }

  root_parent_id = data.azurerm_client_config.core.tenant_id
  root_id        = var.root_id
  root_name      = var.root_name
  library_path   = "${path.root}/lib"
  
  custom_landing_zones = {
    "${var.root_id}-LandingZoneProd" = {
      display_name               = "LandingZonesProd"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "customer_online"
        parameters     = {
          Deny-Resource-Locations = {
            listOfAllowedLocations = ["canadacentral","canadaeast",]
          }
          Deny-RSG-Locations = {
            listOfAllowedLocations = ["canadacentral","canadaeast",]
          }
        }
        access_control = {}
      }
    }
    "${var.root_id}-LandingZoneQA" = {
      display_name               = "LandingZonesQA"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "customer_online"
        parameters     = {
          Deny-Resource-Locations = {
            listOfAllowedLocations = ["canadacentral","canadaeast",]
          }
          Deny-RSG-Locations = {
            listOfAllowedLocations = ["canadacentral","canadaeast",]
          }
        }
        access_control = {}
      }  
    }
    "${var.root_id}-LandingZoneDev" = {
      display_name               = "LandingZonesDevTest"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "customer_online"
        parameters     = {
          Deny-Resource-Locations = {
            listOfAllowedLocations = ["canadacentral","canadaeast",]
          }
          Deny-RSG-Locations = {
            listOfAllowedLocations = ["canadacentral","canadaeast",]
          }
        }
        access_control = {}
      }
    }
  }
}