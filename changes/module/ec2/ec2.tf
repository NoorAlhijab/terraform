resource "aws_instance" "myec2" {
  ami = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"
 
}