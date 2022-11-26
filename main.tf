provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA5UXNPAMF56YCEZ52"
  secret_key = "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"
  
}

#Create a new EC2 launch configuration
resource "aws_instance" "ec2_public" {
  ami                         = "ami-074dc0a6f6c764218"
  instance_type               = "t2.micr"
  key_name                    = "jenkins1"
  subnet_id                   = "subnet-04b182dcbd86e6873"
  tags = {
    "Name" = "EC2-PUBLIC"
  }
  
 
}



