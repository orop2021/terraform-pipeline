variable "env" {
  type    = string
  default = "Dev"
}

variable "name" {
  type    = string
  default = "2Ansible-Server"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "key_pair" {
  type    = string
  default = "ansible"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami" {
  type    = string
  default = "ami-0022f774911c1d690"
}

variable "ingressrules" {
  type    = list(any)
  default = ["80", "22"]
}

variable "protocol" {
  type    = string
  default = "TCP"
}

