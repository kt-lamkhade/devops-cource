 resource "aws_instance" "web1" {
   ami           = var.image_id
   instance_type = var.instance_type

   tags = {
     Name = "HelloWorld"
   }
 }
