provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}


resource "aws_instance" "database" {
  ami           = var.ami["us-east-1"]
  instance_type = var.instance_type[2]
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  subnet_id = aws_subnet.terraform_subnet_1.id
  tags = {
    Name = "test1"
  }
}

/*resource "aws_instance" "webserver" {
  ami           = var.ami["us-east-1"]
  instance_type = var.instance_type[0]
  tags = {
    Name = "test2"
  }
}*/

/*resource "aws_eip" "lb" {
  instance = aws_instance.mysql.id
  vpc      = true
}
*/


/*resource "aws_instance" "mysql" {
  ami           = var.ami["us-east-1"]
  instance_type = var.instance_type[1]
  tags = {
    Name = "test3"
  }
}*/




/*resource "aws_iam_user" "user1" {
  name = "Samir"
}

resource "aws_iam_group" "group1" {
  name = "developers"
}



resource "aws_s3_bucket" "some-bucket" {
  bucket = "my-bucket"
}
*/ 

