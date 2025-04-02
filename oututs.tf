output "ec2_instance_ip" {
    value = aws_instance.terra-ec2.public_ip
    description = "Public IP of the EC2 instance"
}

output "ec2_public_dns" {
    value = aws_instance.terra-ec2.public_dns
    description = "Public DNS of the EC2 instance"
}

output "ec2_instance_id" {
    value = aws_instance.terra-ec2.id
    description = "ID of the EC2 instance"
} 