variable "dbname" {
  type = string
}

resource "aws_instance" "myec2db" {
  ami = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"

  tags = {
    Name = var.dbname
  }

}


