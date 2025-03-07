module "dev_ec2" {
    source = "../"
    ami_id = "ami-045269a1f5c90a6a0"
    instance_type = "t3.micro"
    availability_zone = "us-east-1a"
    size = 15
    device_name = "/dev/sdh"
    region_name = "us-east-1"
  
}