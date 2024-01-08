provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"

  tags = {
    Name = "web server"
  }
  depends_on = [aws_instance.myec2db]

}

resource "aws_instance" "myec2db" {
  ami = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"

  tags = {
    Name = "DB server"
  }

}

data "aws_instance" "dbsearch" {
filter {
 name = "tag:Name"
 values = ["DB server"]
}

}

output "dbservers"{ 
  value = data.aws_instance.dbsearch.availability_zone
}