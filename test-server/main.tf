resource "aws_instance" "test-server" {
  ami                = "ami-02eb7a4783e7e9317"
  instance_type      = "t2.micro"
  availability_zone  = "ap-south-1b"
  vpc_security_group_ids = ["sg-0dcfb1d7312730a94"]  # Replace with your existing security group ID

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("exampl")
    host        = self.public_ip
  }
}

 # provisioner "remote-exec" {
   # inline = [
     # "echo 'wait to start instance'"
   # ]
 # }

 # tags = {
  #  name = "test-server"
 # }

  # provisioner "local-exec" {
  #  command = "echo ${aws_instance.test-server.public_ip} > inventory"
 # }

 # provisioner "local-exec" {
  #  command = "ansible-playbook /var/lib/jenkins/workspace/bank-pro/test-server/bankdeployplaybook.yml"
 # }
# }



