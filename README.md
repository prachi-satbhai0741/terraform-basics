# Terraform-basics

![Terraform](https://img.shields.io/badge/terraform-%3E%3D1.5-purple)
![Provider](https://img.shields.io/badge/provider-AWS-orange)
![AWS](https://img.shields.io/badge/free_tier-supported-green)
![Level](https://img.shields.io/badge/level-beginner-blue)
![Labs](https://img.shields.io/badge/labs-8-lightgrey)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

Learn Terraform from scratch by building real infrastructure on AWS.  
Each lab focuses on one core Terraform concept and builds progressively from basics to more advanced workflows.

---

## Before You Start

Make sure these tools are installed on your machine.

| Tool | Version |
|--------|---------|
| Terraform | >= 1.5 |
| AWS CLI | >= 2.x |
| AWS Account | Free Tier |

Check installation:

```bash
terraform version
aws --version
```

---

## Repository Structure

```bash
terraform-basics/
├── 01-provider-setup/         # Configure AWS provider
├── 02-ec2-instance/          # Create EC2 instance
├── 03-variables-tfvars/      # Variables and tfvars
├── 04-state/                # State management
├── 05-modules/             # Terraform modules
├── 06-outputs-data-sources/ # Outputs and data sources
├── 07-workspaces/          # Environment separation
└── 08-provisioners/        # local-exec and remote-exec
```

---

## Getting Started

Clone the repository:

```bash
git clone https://github.com/prachi-satbhai0741/terraform-basics.git
cd terraform-basics
```

Run any lab:

```bash
cd 01-provider-setup

terraform init
terraform plan
terraform apply
terraform destroy
```

---

## Learning Path

Complete labs in order.

```text
01 → 02 → 03 → 04 → 05 → 06 → 07 → 08
```

| Lab | Topic | Concepts |
|------|--------|-----------|
| 01 | provider-setup | Provider block, credentials, region |
| 02 | ec2-instance | Resource block, AMI, instance types |
| 03 | variables-tfvars | Variables, tfvars, defaults |
| 04 | state | terraform.tfstate, remote backend |
| 05 | modules | Module structure, reusable code |
| 06 | outputs-data-sources | Outputs, data blocks |
| 07 | workspaces | Multiple environments |
| 08 | provisioners | local-exec, remote-exec |

---

## Cloud Provider

All labs use AWS infrastructure.

Services used:

- EC2
- S3
- DynamoDB
- IAM

Free tier resources are used whenever possible.

---
## License

MIT License  
See LICENSE file for details.
