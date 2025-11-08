resource "aws_instance" "backend" {
    ami = data.aws_ami.selected.id
    instance_type = var.instance-type
    key_name = var.key-name
    subnet_id = aws_subnet.prvt5.id
    vpc_security_group_ids = [aws_security_group.backend-server-sg.id]
    tags = {
      Name= "backend-server"
    }
    iam_instance_profile   = data.aws_iam_instance_profile.existing.name
    
    user_data = file("backend.sh")
   
}



