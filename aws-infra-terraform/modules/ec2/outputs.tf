output "public_instance_ips" {
  value = aws_instance.public_ec2[*].public_ip
}
