#! /bin/bash


apt update -y
stat $?

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
stat $?

sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
stat $?

sudo apt-get update
stat $?

sudo apt install openjdk-8-jre
stat $?

sudo apt-get install jenkins
stat $?

systemctl enable jenkins

systemctl status jenkins

