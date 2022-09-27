
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t looyas.com -s a47470bb-c20e-4a9b-9de4-c9159775b333

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-id-lkc.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/identity \
  -tfstate_subscription_id a47470bb-c20e-4a9b-9de4-c9159775b333 \
  -target_subscription a47470bb-c20e-4a9b-9de4-c9159775b333 \
  -tfstate identity.tfstate \
  -env looyas \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)
