## Provisioning EC2 instance with ebs volume
resource "aws_instance" "dev_server" {
    ami = var.ami_id
    instance_type = var.instance_type
    availability_zone = var.availability_zone
    #key_name = "devkey"

    tags = {
      Name = "dev_server"
    }

  
}

## creating ebs volume 
resource "aws_ebs_volume" "dev_vol" {
    availability_zone = var.availability_zone
    size = var.size
    tags = {
      Name = "dev_server"
      env = "Dev"
    }
  
}


# Attaching EBS volume to ec2 instance
resource "aws_volume_attachment" "dev_vol_attach" {
    device_name = var.device_name
    volume_id = aws_ebs_volume.dev_vol.id
    instance_id = aws_instance.dev_server.id
}
