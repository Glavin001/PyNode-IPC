# Installing dependencies
echo "===== Installing dependencies for Mac ====="
echo

echo "Installing ZeroMQ with Homebrew"
brew install zeromq --universal
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

