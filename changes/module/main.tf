provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./ec2"
//create multiple instances of a module.
  for_each = toset(["dev", "test", "prod"])
}