#! /bin/bash

source components/common.sh

Head "Updating packages"
apt update -y
stat $?

Head "Debian package repository of Jenkins to automate installation and upgrade"
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
stat $?

Head "Install Java"
sudo apt install openjdk-8-jre-headless -y
sudo apt install openjdk-8-jdk-headless -y
stat $?

Head "Install Maven"
sudo apt install maven -y
stat $?

Head "Installing Jenkins"
sudo apt-get update -y
sudo apt-get install jenkins -y
stat $?

Head "start enable and status of the jenkins"
systemctl start jenkins
systemctl enable jenkins
systemctl status jenkins
stat $?

Head "password of the jenkins page"
cat /var/lib/jenkins/secrets/initialAdminPassword
stat $?