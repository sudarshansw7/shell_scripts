#!/bin/bash
sudo apt-get update
sudo apt-get install -y openjdk-17-jdk
java --version
sleep 5
sudo apt-get install -y git
git --version
sleep 5
sudo apt-get install -y maven
mvn --version
sleep 5
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install -y jenkins
jenkins --version
sleep 5
echo "Jenkins installation is sucessfull"
sleep 5


