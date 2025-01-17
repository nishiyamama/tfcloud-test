resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags {
    Name = "tfcloud-desuyo-${terraform.env}-vpc-vpc"
    Environment = "${terraform.env}"
  }
}

