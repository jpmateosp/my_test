#!/bin/bash

# Update and upgrade the system
sudo apt update -y && sudo apt upgrade -y

# Install necessary packages
sudo apt install -y git curl software-properties-common openssh-server

# Install and start SSH service
sudo systemctl start ssh
sudo systemctl enable ssh

#systemctl status ssh

# Install Node.js and npm
sudo apt install npm -y
sudo apt install nodejs -y

# Verify Node.js and npm installation
node -v
npm -v


# Update repositories and install Jenkins
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

# Install Java
sudo apt update
sudo apt install fontconfig openjdk-17-jre -y
java -version
openjdk version "17.0.13" 2024-10-15
OpenJDK Runtime Environment (build 17.0.13+11-Debian-2)
OpenJDK 64-Bit Server VM (build 17.0.13+11-Debian-2, mixed mode, sharing)

# Start and enable Jenkins service
sudo systemctl enable jenkins
sudo systemctl start jenkins

jenkins -v
# Verify Jenkins and SSH installation
systemctl status jenkins


echo "Installation of npm, Node.js, Jenkins, git, and SSH is complete!"


