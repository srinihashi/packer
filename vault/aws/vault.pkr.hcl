packer {
  required_plugins {
    amazon = {
      version = ">= 1.0.1"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "aws-ami-ubuntu-vault-east" {
  region = var.region
  source_ami_filter {
    filters = {
      virtualization-type = "hvm"
      name                = "ubuntu/images/*ubuntu-xenial-16.04-amd64-server-*"
      root-device-type    = "ebs"
    }
    owners      = ["099720109477"]
    most_recent = true
  }
  instance_type  = var.instance-type
  #ssh_username   = "ubuntu"
  #ssh_agent_auth = false
  ami_name       = "${var.ami-name}_{{timestamp}}_v${var.version}"
}

build {
  sources = [
    "aws-ami-ubuntu-vault-east"
  ]
}
