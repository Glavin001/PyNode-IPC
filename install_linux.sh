#!/bin/bash
echo "===== Installing dependencies for Linux ====="
echo

echo "Installing ZeroMQ"
echo "Using installation guide from http://maddigitiser.wordpress.com/2013/05/02/installing-zeromq-on-ubuntu-13-04/ "
sudo apt-get install libtool autoconf automake uuid-dev build-essential
cd ~
wget http://download.zeromq.org/zeromq-3.2.2.tar.gz
tar zxvf zeromq-3.2.2.tar.gz && cd zeromq-3.2.2
./configure
make && make install
echo "Done"
echo

echo "Installing Python requirements with Pip"
echo "Includes Pyzmq, Python Binding for ZMQ"
pip install -r requirements.txt
#pip install pyzmq
# pip install pyzmq --install-option="--zmq=bundled"
echo "Done"
echo


echo "Installing Node.js dependencies"
echo "Includes Zeromq.node, Node.js Binding for ZMQ"
npm install
echo "Done"
echo

