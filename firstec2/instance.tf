# resource "aws_instance" "web" {
#   ami           = "ami-0729e439b6769d6ab"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = [22, 80, 443]
    iterator = port
    content {
          description      = "TLS from VPC"
          from_port        = port.value
          to_port          = port.value
          protocol         = "tcp"
          cidr_blocks      = ["0.0.0.0/0"]
    }
  }
}