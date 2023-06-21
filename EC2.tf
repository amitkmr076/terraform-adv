resource "aws_instance" "name_web" {
  count = 2  
  ami = "ami-014d05e6b24240371"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  subnet_id = aws_subnet.main.id

  tags = {
    Name = "HelloWorld"
  }
}