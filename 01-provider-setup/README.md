# 01 — Provider Setup

Configure the **AWS Provider** in Terraform — the first step before provisioning any infrastructure.

---

## What You'll Learn

- What a Terraform provider is
- How to configure the AWS provider block
- How Terraform authenticates with AWS
- What `terraform init` actually does

---

## Files

```
01-provider-setup/
├── main.tf          # Provider configuration
├── versions.tf      # Required providers and Terraform version
└── README.md
```

---

## Concepts

### Provider Block
```hcl
provider "aws" {
  region = "us-east-1"
}
```

### Required Providers (versions.tf)
```hcl
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
```

---

## AWS Authentication (3 ways)

| Method | How |
|--------|-----|
| AWS CLI profile | `aws configure` |
| Environment variables | `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY` |
| IAM Role (EC2/CI) | Attached automatically |

> Best practice: Never hardcode credentials in `.tf` files. Use env vars or AWS CLI profile.

---

## Run It

```bash
terraform init     # Downloads AWS provider plugin
terraform validate # Checks syntax
```

---

## Next

→ [02-ec2-instance](../02-ec2-instance/README.md) — Launch your first EC2 instance
