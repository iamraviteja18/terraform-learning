terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}
provider "aws" {
  profile = "default"
  region  = "us-west-2"
}
resource "aws_vpc" "trailvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "ravi"
  }
}
resource "aws_subnet" "trailsubnet" {
  vpc_id     = aws_vpc.trailvpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "ravisub"
  }
}
resource "aws_subnet" "trailsubnet1" {
  vpc_id     = aws_vpc.trailvpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "ravisub1"
  }
}
