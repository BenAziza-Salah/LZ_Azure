
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t looyas.com

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-co-wqt.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/connectivity/virtual_wans \
  -tfstate_subscription_id a47470bb-c20e-4a9b-9de4-c9159775b333 \
  -target_subscription a47470bb-c20e-4a9b-9de4-c9159775b333 \
  -tfstate connectivity_virtual_wans_prod.tfstate \
  -env looyas \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connectivity_virtual_wans_prod.tfstate.tfplan \
  -a plan

```

