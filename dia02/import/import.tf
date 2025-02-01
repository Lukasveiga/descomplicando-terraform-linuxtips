import {
  to = aws_instance.web
  id = "i-031c5987b373c5ae0"
}

resource "aws_instance" "web" {
  ami           = "ami-0cb91c7de36eed2cb"
  instance_type = "t2.micro"

  tags = {
    "Name" : "import"
  }
}
