# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "Terraform-a" {
 ami = "ami-0568773882d492fc8"
 instance_type = "t2.micro"
 key_name = "tests"
 vpc_security_group_ids = ["${aws_security_group.tf-sg.id}"]
 subnet_id = "${aws_subnet.tf-public-sn-1.id}"
 associate_public_ip_address = true
 user_data = "${file("da1.sh")}"
tags = {
 Name = "Terraform-a"
}
}
# Creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "Terraform-b" {
 ami = "ami-0568773882d492fc8"
 instance_type = "t2.micro"
 key_name = "tests"
 vpc_security_group_ids = ["${aws_security_group.tf-sg.id}"]
 subnet_id = "${aws_subnet.tf-public-sn-2.id}"
 associate_public_ip_address = true
 user_data = "${file("da2.sh")}"
tags = {
 Name = "Terraform-b"
}
}
