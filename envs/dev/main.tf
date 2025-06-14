module "oidc" {
  source = "../../modules/oidc"
}

module "vpc" {
  source      = "../../modules/vpc"
  project     = "eagerminds"
  environment = "dev"
  vpc_cidr    = "10.42.0.0/16"
}
# provider "aws" {
#   region = "us-east-1"
# }

# resource "aws_s3_bucket" "tf_state" {
#   bucket        = "your-company-terraform-state-00107456"
#   force_destroy = true
# }

# resource "aws_dynamodb_table" "tf_lock" {
#   name         = "terraform-lock"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }
