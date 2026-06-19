# STEP 2: Uncomment this AFTER the S3 bucket + DynamoDB table exist.
# Update the bucket name to match the one created in main.tf (check terraform output).
# Then run: terraform init -migrate-state

# terraform {
#   backend "s3" {
#     bucket         = "my-terraform-state-bucket-XXXXXXXX"  # replace with actual bucket name
#     key            = "terraform-basics/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-state-lock"
#     encrypt        = true
#   }
# }
