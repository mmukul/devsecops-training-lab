#!/bin/bash

## Install Jenkins on Centos 7

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo && \
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key && \

sudo yum install -y git fontconfig java-11-openjdk && \
sudo yum install -y jenkins && \
 
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp && \
sudo firewall-cmd --reload

sudo systemctl start jenkins && \
sudo systemctl enable jenkins
