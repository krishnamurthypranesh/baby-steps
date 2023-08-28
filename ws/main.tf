# test instance
data "aws_ami" "test_amazon_linux" {
    most_recent = true

    name = "test_amazon_linux_ami"

    virtualization_type = "hvm"
}

resource "aws_instance" "vm-web" {
  ami           = data.aws_ami.test_amazon_linux.id
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