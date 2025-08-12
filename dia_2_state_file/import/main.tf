import {
  to = aws_instance.web
  id = "i-abcd1234"
}


resource "aws_instance" "web" {
  ami           = ""
  instance_type = ""

  tags = {
    Name = ""
  }
}
