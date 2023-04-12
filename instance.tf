resource "aws_instance" "production-server" {
 ami = "ami-007855ac798b5175e"
 instance_type = "t2.micro"
 availability_zone = "us-east-1a"
 security_groups = [aws_security_group.mysg1.id]
 key_name = "jenkinskey1"
 tags = {
 name = "ansible_instance"
 }
 provisioner "remote-exec" {
 inline = [
     "ansible-playbook bankdeployplaybook.yml"
     ]
     }
     }
