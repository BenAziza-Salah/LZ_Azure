
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription Azure subscription 1 with the user Benazizasalah55_gmail.com#EXT#@Looyas.onmicrosoft.com
rover login -t looyas.com -s a47470bb-c20e-4a9b-9de4-c9159775b333

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-scp-prk.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id a47470bb-c20e-4a9b-9de4-c9159775b333 \
  -tfstate platform_subscriptions.tfstate \
  -env looyas \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)