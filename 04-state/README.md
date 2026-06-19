# 04 — State Management

Understand how Terraform tracks your infrastructure, and move that tracking to a shared remote location.

## What You'll Learn

- What `terraform.tfstate` is and why Terraform needs it
- Why local state is risky once more than one person touches the infra
- How an S3 bucket + DynamoDB table provide remote state with locking
- Useful commands for inspecting and managing state

## Files in This Folder

| File | Purpose |
|------|---------|
| `versions.tf` | Locks Terraform and provider versions |
| `provider.tf` | AWS provider and region |
| `main.tf` | Creates the S3 bucket (versioned, encrypted, private) and DynamoDB lock table |
| `backend.tf` | Remote backend config — commented out until the bucket exists |
| `outputs.tf` | Bucket name and DynamoDB table name after apply |

## Two-Step Process

This folder bootstraps its own remote backend, so it has to run in two stages:

1. Run with **local state** first to create the S3 bucket and DynamoDB table.
2. Note the bucket name from the output, fill it into `backend.tf`, uncomment that block, then re-initialize so Terraform migrates its state into S3.

## Useful State Commands

`terraform show` (view current state) · `terraform state list` (list tracked resources) · `terraform state show <resource>` (inspect one resource) · `terraform refresh` (sync state with real infra).

## Commands to Run

```bash
terraform init
terraform apply                  # creates S3 bucket + DynamoDB table (local state)
terraform output                 # copy the bucket name shown here

# Now edit backend.tf: uncomment it, paste the bucket name in
terraform init -migrate-state    # moves state into S3

terraform destroy                # when completely done with this lab
```

## 🔗 Next

→ `05-modules` — write reusable Terraform code
