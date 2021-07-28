Terraform - Azure 
=================>
1. Redeem Azure Pass 
2. Open Azure CLI 


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
