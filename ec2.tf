

resource "aws_instance" "jenkins" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  user_data              = file("${path.module}/jenkins-install.sh")
  subnet_id              = module.jenkins-vpc.public_subnets[0]
  key_name               = "dev-wdp"
  tags = {
    "Name" = var.instance-name
    "env"  = var.env
    "Team" = var.Team
  }
}
