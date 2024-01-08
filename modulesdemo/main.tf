provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"

  tags = {
    Name = "web server"
  }
 
}

module "dbserver" {
  source = "./db/mysql"
  dbname = "mydbserver"
}

output "dbprivateip" {
  value = module.dbserver.privateip
}