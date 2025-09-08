#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker ec2-user

# Run OpenProject via Docker
sudo docker run -d -p 80:80 --name openproject openproject/community:13
