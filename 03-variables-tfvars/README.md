# 03 — Variables & tfvars

Replace hardcoded values with input variables, so the same config can adapt to different environments.

##  What You'll Learn

- How to declare a `variable` block (type, default, description)
- How `.tfvars` files supply values to variables
- How to reference a variable using `var.<name>`
- The order Terraform uses when multiple value sources exist

## Files in This Folder

| File | Purpose |
|------|---------|
| `versions.tf` | Locks Terraform and provider versions |
| `provider.tf` | AWS provider, region pulled from a variable |
| `variables.tf` | All variable declarations (region, instance type, AMI, environment, name) |
| `main.tf` | EC2 resource built entirely from variables |
| `terraform.tfvars` | Default values — used automatically by Terraform |
| `prod.tfvars` | Alternate values for a "prod-like" run |
| `outputs.tf` | Instance ID and public IP after apply |

## Variable Precedence (highest wins)

CLI `-var` flag → CLI `-var-file` flag → `terraform.tfvars` → environment variables (`TF_VAR_*`) → default in the `variable` block.

##  Commands to Run

```bash
terraform init
terraform apply                          # uses terraform.tfvars automatically
terraform apply -var-file="prod.tfvars"  # use the prod values instead
terraform apply -var="environment=test"  # override a single variable on the fly
terraform destroy
```

##  Next

→ `04-state` — understand how Terraform tracks what it created
