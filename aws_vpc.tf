resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags {
    Name = "tfcloud-desu-${terraform.env}-vpc"
    Environment = "${terraform.env}"
  }
}

