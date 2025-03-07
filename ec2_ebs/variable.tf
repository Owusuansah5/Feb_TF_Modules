variable "ami_id" {
    description = "AMI for the EC2"
    type = string
  
}

variable "instance_type" {
    description = "Instance_type for EC2"
    default = "t2.micro"
    type = string
  
}

variable "availability_zone" {
    description = "Availability zone for your ec2"
    type = string
    default = "us-east-1a"
  
}

variable "size" {
    description = "ebs size attached to ec2"
    default = 10
    type = number

  
}

variable "device_name" {
    description = "path for the ebs"
    default = "/dev/sdh"
    type = string  
}

variable "region_name" {
    description = "name of region"
    default ="us-east-1"
  
}