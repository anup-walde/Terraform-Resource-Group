# Terraform Resource Groups

Terraform configuration for creating multiple Azure resource groups using a reusable child module. Each environment (`dev`, `test`, and `prod`) is a parent/root module that calls the child module with `for_each`.

## Structure

```text
Terraform-Resource-Group/
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── provider.tf
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   ├── prod/
│   └── test/
└── modules/
    └── resource-group/
        ├── main.tf
        ├── outputs.tf
        └── variables.tf
```

## Prerequisites

- Terraform 1.3 or later
- Azure credentials configured for the AzureRM provider (for example, via Azure CLI login or service-principal environment variables)

## Apply an environment

Run Terraform from the environment directory you want to deploy:

```powershell
Set-Location .\environments\dev
terraform init
terraform plan
terraform apply
```

Repeat from `.\environments\test` or `.\environments\prod` to deploy those environments. Each environment's `terraform.tfvars` supplies the resource groups to create. The map key is used as the Terraform `for_each` key; each value supplies the Azure resource group name, location, and tags.

To remove an environment's resource groups, run `terraform destroy` from that environment directory.

> The example names and locations in the `.tfvars` files should be reviewed and changed to match your Azure naming and deployment requirements before applying.
