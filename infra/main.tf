provider "aws" {
  region = "ap-south-1"
}

module "oidc" {
  source = "../../modules/oidc"
}

module "vpc" {
    source = "../../modules/vpc"
}