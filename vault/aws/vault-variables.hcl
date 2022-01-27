variable "version" {
  type    = string
  default = "1.0.1"
}

variable "region" {
  type = string
  default = "us-east-1"
}

variable "image" {
  type = string
  default = ""
}

variable "instance-type" {
  type = string
  default = "t2.micro"
}

variable "ami-name" {
  type = string
  default = "ami-rhel-v8.1-vault-1.7.5+ent-raft"
}