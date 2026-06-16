# 02 — EC2 Instance

Launch your first real AWS resource with Terraform.

## What You'll Learn

- The structure of a `resource` block
- How an AMI ID and instance type define a server
- The difference between `terraform plan` and `terraform apply`
- How to safely tear down resources with `terraform destroy`

## Files in This Folder

| File | Purpose |
|------|---------|
| `versions.tf` | Locks Terraform and provider versions |
| `provider.tf` | AWS provider and region |
| `main.tf` | The EC2 instance resource definition |
| `outputs.tf` | Exposes instance ID, public IP, and instance state after apply |

## Notes

AMI IDs are region-specific — the one used here matches `us-east-1`. If you change the region in `provider.tf`, update the AMI ID in `main.tf` too. The instance type used is free-tier eligible.

## Commands to Run

```bash
terraform init
terraform plan      # preview what will be created
terraform apply     # create the EC2 instance
terraform output    # view the instance ID and public IP
terraform destroy   # clean up to avoid AWS charges
```

## Next

→ `03-variables-tfvars` — stop hardcoding values, use variables instead
