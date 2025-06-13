module "vpc" {
  source      = "../../modules/vpc"
  project     = "eagerminds"
  environment = "prod"
  vpc_cidr    = "10.42.0.0/16"
}
