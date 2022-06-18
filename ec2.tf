resource "aws_instance" "ansible-instance" {
  ami                    = var.ami
  key_name               = var.key_pair
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.websg.id]
  tags = {
    Name = var.name
    env  = var.env
  }
  user_data = file("userdata.sh")
}

resource "aws_instance" "jenkins-instance" {
  ami                    = var.ami
  key_name               = var.key_pair
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.websg.id]
  tags = {
    Name = " Jenkins-Server"
    env  = var.env
  }
  user_data = file("jenkins.sh")
}

resource "aws_instance" "tomcat-instance" {
  ami                    = var.ami
  key_name               = var.key_pair
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.websg.id]
  tags = {
    Name = "Tomcat-Server"
    env  = var.env
  }
  user_data = file("tomcat.sh")
}

resource "aws_instance" "apache-instance" {
  ami                    = var.ami
  key_name               = var.key_pair
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.websg.id]
  tags = {
    Name = "Apache-Server"
    env  = var.env
  }
}

