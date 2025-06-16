terraform {
  backend "s3" {
    bucket         = "your-company-terraform-state-00107456"
    key            = "envs/prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
