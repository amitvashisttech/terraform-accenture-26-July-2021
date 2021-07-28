# Terraform with Azure Cloud 

#### Please follow the below steps inorder to setup Azure Account.!
#### 1. Redeem Azure Pass 
#### 2. Open Azure CLI 

##### Now Create Azure Contributer Service Principal for terraform Auth.

```
# az login 
```

```
# az account list -o table 
```

```
# az account set -s "<subscription-id>"
```

```
# az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<subscription_id>"
```




### Export the Azure Auth Variable in your bash RC. 
```
export ARM_CLIENT_SECRET="<<password>>"
export ARM_CLIENT_ID="<<appID>>"
export ARM_SUBSCRIPTION_ID="<<subscriptionID>>"
export ARM_TENANT_ID="<<tenant>>"
```
