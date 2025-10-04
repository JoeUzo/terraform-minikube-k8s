data "aws_ami" "ubuntu_ami" {
    most_recent = true
    owners = ["amazon"]

    filter {
      name = "AMI name"
      values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
    }

    filter {
      name = "Virtualization"
      values = ["hvm"]
    }

    filter {
      name   = "Architecture"
      values = ["x86_64"]
    }


}