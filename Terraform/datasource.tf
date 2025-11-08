#-------AMI-------------#

data "aws_ami" "selected" {
  most_recent = true

  filter {
    name   = "image-id"
    values = ["ami-0157af9aea2eef346"]
  }

  owners = ["amazon"]  # or "self" if it's your custom AMI
}


#For self owner
# data "aws_ami" "amzlinux" {
#   most_recent = true
#   owners = [ "self" ]
#   filter {
#     name = "name"
#     values = [ "frontend-ami" ]
#   }

# }

data "aws_iam_instance_profile" "existing" {
  name = "paytm_role"
}