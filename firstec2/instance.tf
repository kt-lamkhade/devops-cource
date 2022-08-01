resource "aws_instance" "web" {
  ami           = "ami-0729e439b6769d6ab"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}