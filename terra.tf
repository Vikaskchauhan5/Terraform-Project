provider "aws" {

  access_key = "ASIA3NGD24IXEQSF4HFT"

  secret_key = "q8irhIQxB7JP+dEzptAeTLGRAqJVJGRqqZ2OqEYA"

  token = "FwoGZXIvYXdzEL3//////////wEaDPpqIoJzIERG5eQiyyK5AT/pK2SV1Bi79xXarW2F9glgQmrTDdo0Mq198P6b1erORUELg0IQMepX7mPDhRYoC+Kvvkd/ynvzFEIRG+TRsLjx63m7czQEeSiaSRI2hO9HK2kCVov3NLTf/LDHpdPCw9+uGZmNz9BNT//e1B7Uo7lku/QW7epQ34eAco7p5WslAKyX6UWGM6LFxE/Y43KPLOXytt/NLZRGHAiMs0ZSfbHxECl9CuG49Ni/nHRqvt2HGm51aZuyG0zvKJHpw5cGMi1RBZYlLGpDwOH41zWZ1g3FPo6UndRpzzgtK+1WiglOYnbTJHdyMD49J5kfLgo="

  region = "us-east-1"

}

resource "aws_security_group" "jenkins_sg" {

  name        = "jenkins_sg"

  description = "Allow Jenkins Traffic"

  tags = {

    Name = "Jenkins SG"

  }

}

resource "aws_instance" "instance1" {

 ami = "ami-090fa75af13c156b4"

 instance_type = "t2.micro"

 security_groups = [aws_security_group.jenkins_sg.name]

 user_data = "${file("vikas.sh")}"

 tags = {

  Name = "EC2AWS"

 }

}
