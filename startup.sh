!#/bin/bash

# Installing git
sudo yum install -y git

# Installing python
sudo yum install gcc openssl-devel bzip2-devel
sudo wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz
sudo tar xzf Python-3.7.2.tgz
cd Python-3.7.2.tgz
./configure ––enable–optimizations
make altinstall
sudo yum install python-pip
sudo yum install python-devel
sudo yum groupinstall 'development tools'

# create project resources
mkdir projects
cd projects
mkvirtualenv django
pip install Django==1.5