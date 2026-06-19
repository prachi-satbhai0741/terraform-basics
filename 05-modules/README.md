# 05 — Modules

Package resources into a reusable module instead of repeating the same resource block multiple times.

## What You'll Learn

- What a module actually is (just a folder of `.tf` files)
- How to structure a child module with its own variables and outputs
- How to call a module from the root configuration
- How to pass inputs in and read outputs back out of a module

## Files in This Folder

| File | Purpose |
|------|---------|
| `versions.tf` | Locks Terraform and provider versions (root) |
| `provider.tf` | AWS provider and region (root) |
| `main.tf` | Calls the `ec2` module twice with different names |
| `outputs.tf` | Root-level outputs pulled from the module |
| `modules/ec2/main.tf` | The actual EC2 resource defined inside the module |
| `modules/ec2/variables.tf` | Inputs the module accepts (AMI, instance type, name) |
| `modules/ec2/outputs.tf` | Values the module exposes back to whoever calls it |

## Notes

A module source can be a local path (used here), the Terraform Registry, or a Git repository. Any time you add or change a module source, you need to re-run `terraform init`.

## Commands to Run

```bash
terraform init     # required again whenever a module is added
terraform plan
terraform apply
terraform output   # see instance IDs for both module calls
terraform destroy
```

## Next

→ `06-outputs-data-sources` — reference existing AWS infrastructure
