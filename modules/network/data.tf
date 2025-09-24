data "aws_availability_zones" "avail_azs" {
  filter {
    name = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}