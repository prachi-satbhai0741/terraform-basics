# 06 — Outputs & Data Sources

Expose values from your config, and read existing AWS infrastructure without managing it yourself.

## What You'll Learn

- When and why to use `output` blocks
- What a `data` source is, and how it differs from a `resource`
- How to fetch the latest AMI dynamically instead of hardcoding an ID
- How to look up the default VPC and its subnets

## Files in This Folder

| File | Purpose |
|------|---------|
| `versions.tf` | Locks Terraform and provider versions |
| `provider.tf` | AWS provider and region |
| `data.tf` | Data sources — latest Amazon Linux AMI, default VPC, default subnets |
| `main.tf` | EC2 instance built using values from the data sources |
| `outputs.tf` | Instance ID, the AMI ID actually used, and the default VPC ID |

## resource vs data

A `resource` block creates and manages infrastructure — it shows up in state as something Terraform owns. A `data` block only reads existing information; it never creates or destroys anything.

## Commands to Run

```bash
terraform init
terraform plan
terraform apply
terraform output    # confirm which AMI and VPC were actually used
terraform destroy
```

## Next

→ `07-workspaces` — manage dev/staging/prod from one configuration
