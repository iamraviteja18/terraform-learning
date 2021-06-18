# terraform-learning
* terraform init  (To initialise plugins)
* terraform fmt   (To format code)
* terraform validate    (to check syntax)
* terraform plan    (To check before building)
* terraform apply   (To to build)
* terraform destroy   (To destroy)

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "pras11-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1b"]
  private_subnets = ["10.0.2.0/24"]
  public_subnets  = ["10.0.1.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
  
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
