
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      level3 = {
        "Reader" = {
          object_ids = {
            keys = [
              "6adfed5a-2dbc-49d9-be7b-21b45006f160", // caf_platform_maintainers
              "8d4e1189-2766-412c-b85a-fdd0bdee1c10"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
      level4 = {
        "Reader" = {
          object_ids = {
            keys = [
              "6adfed5a-2dbc-49d9-be7b-21b45006f160", // caf_platform_maintainers
              "8d4e1189-2766-412c-b85a-fdd0bdee1c10"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }

    storage_accounts = {
      level3 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "6adfed5a-2dbc-49d9-be7b-21b45006f160", // caf_platform_maintainers
              "8d4e1189-2766-412c-b85a-fdd0bdee1c10"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "8d4e1189-2766-412c-b85a-fdd0bdee1c10" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "6adfed5a-2dbc-49d9-be7b-21b45006f160", // caf_platform_maintainers
              "8d4e1189-2766-412c-b85a-fdd0bdee1c10"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "8d4e1189-2766-412c-b85a-fdd0bdee1c10" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
