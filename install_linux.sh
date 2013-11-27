#!/bin/bash
echo "===== Installing dependencies for Linux ====="
echo

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

echo "Installing ZeroMQ"
echo "Using installation guide from http://maddigitiser.wordpress.com/2013/05/02/installing-zeromq-on-ubuntu-13-04/ "
sudo apt-get install libtool autoconf automake uuid-dev build-essential
dir="$(pwd)"
mkdir downloads
cd downloads/
if [ ! -d "zeromq-3.2.2.tar.gz" ]; then
    # Control will enter here if $DIRECTORY doesn't exist.
    echo "Downloading ZeroMQ 3.2.2"
    wget http://download.zeromq.org/zeromq-3.2.2.tar.gz
fi
tar zxvf zeromq-3.2.2.tar.gz && cd zeromq-3.2.2
./configure
make && make install
cd "$dir"
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


