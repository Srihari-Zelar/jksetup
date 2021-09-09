#! /bin/bash


apt update -y

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt install openjdk-8-jre-headless -y

sudo apt install openjdk-8-jdk-headless -y

sudo apt install maven -y

sudo apt-get update -y

sudo apt-get install jenkins -y

systemctl start jenkins

systemctl enable jenkins

systemctl status jenkins

