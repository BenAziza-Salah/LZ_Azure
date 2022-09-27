azuread_groups = {
  caf_platform_maintainers = {
    name                   = "caf-platform-maintainers"
    description            = "High privileged group to run all CAF deployments from vscode. Can be used to bootstrap or troubleshoot deployments."
    owners                 = ["6d04de7c-1581-4a77-aeee-cbc995b8c0b0"]
    prevent_duplicate_name = true
  }
  caf_platform_contributors = {
    name                   = "caf-platform-contributors"
    description            = "Can only execute terraform plans for level1 and level2. They can test platform improvements and propose PR."
    owners                 = ["6d04de7c-1581-4a77-aeee-cbc995b8c0b0"]
    prevent_duplicate_name = true
  }
  level0 = {
    name = "caf-level0"
    members = {
      azuread_service_principal_keys = ["level0"]
    }
    owners                 = ["6d04de7c-1581-4a77-aeee-cbc995b8c0b0"]
    prevent_duplicate_name = true
  }
  alz = {
    name = "caf-alz"
    members = {
      azuread_service_principal_keys = ["alz"]
    }
    owners                 = ["6d04de7c-1581-4a77-aeee-cbc995b8c0b0"]
    prevent_duplicate_name = true
  }
  identity = {
    name = "caf-identity"
    members = {
      azuread_service_principal_keys = ["identity"]
    }
    owners                 = ["6d04de7c-1581-4a77-aeee-cbc995b8c0b0"]
    prevent_duplicate_name = true
  }
  management = {
    name = "caf-management"
    members = {
      azuread_service_principal_keys = ["management"]
    }
    owners                 = ["6d04de7c-1581-4a77-aeee-cbc995b8c0b0"]
    prevent_duplicate_name = true
  }
  connectivity = {
    name = "caf-connectivity"
    members = {
      azuread_service_principal_keys = ["connectivity"]
    }
    owners                 = ["6d04de7c-1581-4a77-aeee-cbc995b8c0b0"]
    prevent_duplicate_name = true
  }
  subscription_creation_platform = {
    name = "caf-subscription_creation_platform"
    members = {
      azuread_service_principal_keys = ["subscription_creation_platform"]
    }
    owners                 = ["6d04de7c-1581-4a77-aeee-cbc995b8c0b0"]
    prevent_duplicate_name = true
  }
  subscription_creation_landingzones = {
    name = "caf-subscription_creation_landingzones"
    members = {
      azuread_service_principal_keys = ["subscription_creation_landingzones"]
    }
    owners                 = ["6d04de7c-1581-4a77-aeee-cbc995b8c0b0"]
    prevent_duplicate_name = true
  }
}
