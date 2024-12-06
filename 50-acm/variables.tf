variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
    default = {
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}

variable "zone_name" {
    default = "dev.divyavutakanti.com"
}

variable "zone_id" {
    default = "Z02510657KRVXNZGHI6U"
}