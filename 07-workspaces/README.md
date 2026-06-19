# 07 — Workspaces

Manage multiple environments (dev, staging, prod) from the same configuration using Terraform workspaces.

## What You'll Learn

- The problem workspaces solve — one config, multiple isolated states
- How to create, switch, and list workspaces
- How to reference `terraform.workspace` inside your config to change behavior per environment
- When workspaces are a good fit, and when separate directories are better

## Files in This Folder

| File | Purpose |
|------|---------|
| `versions.tf` | Locks Terraform and provider versions |
| `provider.tf` | AWS provider and region |
| `main.tf` | Uses `terraform.workspace` to pick instance size and name dynamically |
| `outputs.tf` | Shows the active workspace, instance ID, and instance type chosen |

## Workspaces vs Separate Directories

Workspaces share one configuration but keep separate state files per environment — good for environments that are mostly identical. If environments genuinely differ in structure (not just size), separate directories or tools like Terragrunt are a better fit.

## Commands to Run

```bash
terraform init

terraform workspace new dev
terraform workspace select dev
terraform apply              # deploys using dev's state

terraform workspace new prod
terraform workspace select prod
terraform apply              # deploys using a completely separate state

terraform workspace list     # see all workspaces
terraform destroy            # destroy in the currently selected workspace
```

## Next

→ `08-provisioners` — run scripts on resources after they're created
