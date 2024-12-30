provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./VPC"
  
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  private_subnet_cidr  = var.private_subnet_cidr
  availability_zone    = var.availability_zone
}

module "ec2" {
  source = "./EC2"
  vpc_id              = module.vpc.vpc_id
  public_subnet_id    = module.vpc.public_subnet_id
  private_subnet_id   = module.vpc.private_subnet_id
  instance_type       = var.instance_type
  public_key_name     = var.public_key_name
  private_key_name    = var.private_key_name
}