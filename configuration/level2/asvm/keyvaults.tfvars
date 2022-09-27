
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "looyas"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "8d4e1189-2766-412c-b85a-fdd0bdee1c10"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "1a23083c-de9f-416e-8106-811a59c02387"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "6adfed5a-2dbc-49d9-be7b-21b45006f160"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level4 = {
    name               = "l4"
    resource_group_key = "level4"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "looyas"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "8d4e1189-2766-412c-b85a-fdd0bdee1c10"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_non_prod"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_prod"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "1a23083c-de9f-416e-8106-811a59c02387"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "6adfed5a-2dbc-49d9-be7b-21b45006f160"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
