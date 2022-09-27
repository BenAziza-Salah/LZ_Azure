# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t looyas.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.0

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-idl0-ynr.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm \
  -tfstate_subscription_id a47470bb-c20e-4a9b-9de4-c9159775b333 \
  -target_subscription a47470bb-c20e-4a9b-9de4-c9159775b333 \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env looyas \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

