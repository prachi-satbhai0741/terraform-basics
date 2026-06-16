provider "aws" {
  region = "us-east-1"

  # Auth is picked up automatically from:
  # 1. AWS CLI profile (~/.aws/credentials)
  # 2. Environment variables: AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY
  # 3. IAM Role (on EC2 or CI runners)
  # Never hardcode credentials here!
}
