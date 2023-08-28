# test instance
resource "aws_instance" "vm-web" {
  ami           = "ami-06f621d90fa29f6d0"
  instance_type = "t2.micro"

  tags = {
    Name = "server to test tf integration with aws"
    Env = "dev"
  }
}

# route 53 hosted zone

# vpc

# load balancer

# rds

# ecs cluster

# code pipeline

# ec2 instance - jenkins for CI/CD/CQ

# sonarcloud?