terraform {
  backend "s3" {
    bucket         = "your-company-terraform-state-00107456"
    key            = "envs/stage/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
