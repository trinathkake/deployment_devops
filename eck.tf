module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "first_instance"
  instance_count         = 1

  ami                    = "ami-01a9d7c9540fa86b3"
  instance_type          = "t2.micro"
  key_name               = "devkack"
  monitoring             = false
  vpc_security_group_ids = ["sg-0196f9c4fecfa9965"]
  subnet_id              = "subnet-05361cd0813d38e48"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
