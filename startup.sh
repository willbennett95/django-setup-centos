#!/bin/bash

# Installing git
yum install -y git

USER="will4474"

# Installing python

yum install -y https://centos7.iuscommunity.org/ius-release.rpm
yum update -y
yum install -y python36u python36u-libs python36u-devel python36u-pip
alias python='python3.6'
pip3.6 install --upgrade pip
alias pip='pip3.6'
pip install virtualenv

# create project resources
mkdir /home/$USER/projects
su - $USER
cd /home/$USER/projects
virtualenv djangoenv
source /home/$USER/projects/djangoenv/bin/activate
sudo pip install django


