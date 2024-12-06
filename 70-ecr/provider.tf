terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
 
 backend "s3" {
    bucket = "d81s-remote-state-dev"
    key    = "roboshop-ecr-dev"
    region = "us-east-1"
    dynamodb_table = "d81s-locking-dev"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}