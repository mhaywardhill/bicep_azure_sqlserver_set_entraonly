## Enable Microsoft Entra authentication only on Azure SQL Server using Bicep

I use this project to enable Microsoft Entra authentication only on Azure SQL Server using Bicep. I execute the commands from a Linux terminal on Windows (Ubuntu on WSL).

### Login to Azure using the CLI

```
az Login
```

Use `az account show` to check the subscription context.


### Deploy using Bicep

```
az deployment group create --resource-group xxxxxxxx --template-file ./main.bicep --parameters serverName=xxxxxxx
```
