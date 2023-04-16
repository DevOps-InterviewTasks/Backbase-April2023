# Task Details
Bonus Task (required for Senior):
- This task exists because we interested in your terraform knowledge, you can choose to complete it
or not.
- Make a small terraform project, that deploys a centos AMI to a new VPC.
- I want to be able to curl http://google.com from inside the AMI.
- you choose the rest of the details, if any.


# Solution Information

- Here I created New VPC with CIDR= 10.10.0.0/16 with 3 public and 3 private subnets
- Before running, please update below env varibles
    - stack = "Test"
    - environment = "NewVPC"
    - region_primary = "ap-south-1"
    - vpc_cidr = "10.10.0.0/16"
    - ec2_IAM_role = "SSM" --> Should be pre-created in your AWS account with name and permissions of your choice
    - ec2_keypair = "Abdul" --> Should be pre-created in your AWS account with name of your choice
    - ec2_name = "EC2-Instance" --> Should be pre-created in your AWS account with name of your choice
    - ec2_size = "t2.micro" --> Should choose instance type of your choice
    - aws_profile = "abdul" --> AWS account CLI pre-created in local, or can also use aws access key and secret key
- Initialise the tf, which installs provider by
```
terraform init
```
- Validate your updated files with
```
terraform validate
```
- Apply the files to create infra
```
terraform apply
``` 
this prompts to type `yes` or `no` to proceed.