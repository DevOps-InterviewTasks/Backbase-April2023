variable "stack" {
    type = string
    description = "Defines the application stack to which this component is related. (e.g AirView, PivotalCloud, Exchange)"
}
variable "environment" {
    type = string
    description = "App environment"
}

variable "region_primary" {
    type = string
    description = "Primary AWS region for this account"
}

variable "vpc_cidr" {
    type    = string
    description = "For creating vpc range"
}
variable "ec2_IAM_role" {
    type = string
    description = "EC2 IAM role"
}
variable "ec2_keypair" {
    type = string
    description = "EC2 Keypair"
}
variable "ec2_name" {
    type = string
    description = "EC2 Name"
}
variable "ec2_size" {
    type = string
    description = "EC2 Size"
}
variable "aws_profile" {
    type = string
    description = " AWS Account To Use"
}