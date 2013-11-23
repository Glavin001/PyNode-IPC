#!/bin/bash
# Main Installer

dir=$(pwd)

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform        
    ./install_mac.sh
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under Linux platform
    ./install_linux.sh
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under Windows NT platform
    ./install_windows.sh
fi

echo
echo "**********"
echo
