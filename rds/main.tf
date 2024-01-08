provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "myrds" {
  db_name = "myDB"
  identifier = "my-first-rds"
  instance_class = "db.t2.micro"
  engine = "10.2.21"
  port = 3306
  allocated_storage = 20
  skip_final_snapshot = true
}