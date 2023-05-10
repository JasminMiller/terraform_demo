variable "access_key" {
  default = "pls add your own access key here"
}

variable "secret_key" {
  default = "pls add your own secret key here"
}

variable "instance_type" {
  type = list(any)
}



variable "ami" {
  type = map(any)
  default = {
    us-east-1 = "ami-0cff7528ff583bf9a"
    us-east-2 = "ami-02d1e544b84bf7502"
    us-west-1 = "ami-0d9858aa3c6322f73"
    us-west-2 = "ami-098e42ae54c764c35"
  }
}
