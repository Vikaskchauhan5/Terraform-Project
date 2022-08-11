#!/bin/bash



sudo apt update

sudo apt upgrade -y

sudo apt install default-jdk -y

sudo apt install python3 -y

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update

sudo apt install jenkins -y

sudo systemctl daemon-reload

sudo systemctl start jenkins

sudo systemctl status jenkins
