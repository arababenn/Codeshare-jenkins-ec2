#!/bin/bash

sudo yum install wget git -y
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \ https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo amazon-linux-extras install java-openjdk11 -y
sudo dnf install java-11-amazon-corretto -y
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
##sudo cat /var/lib/jenkins/secrets/initialAdminPassword