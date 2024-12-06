module "vpc" {
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/divyavut/terraform-aws-vpc.git?ref=main"
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    enable_dns_hostnames = true
    common_tags = var.common_tags
    public_subnet_cidr_block = var.public_subnet_cidrs
    private_subnet_cidr_block = var.private_subnet_cidrs
    database_subnet_cidr_block = var.database_subnet_cidrs
    ispeering_required = var.is_peering_required
}