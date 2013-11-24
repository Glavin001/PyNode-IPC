#!/usr/bin/python

import zmq
import time
import sys
import json

port = "3000"
if len(sys.argv) > 1:
    port =  sys.argv[1]
    int(port)

# User Input
input1 = int( raw_input("Enter integer A: ") )
input2 = int( raw_input("Enter integer B: ") )

# ZeroMQ setup
context = zmq.Context()
#print "Connecting to server..."
socket = context.socket(zmq.REQ)
socket.connect("tcp://127.0.0.1:%s" % port)

# Send message
socket.send(json.dumps({'A':input1, 'B':input2}))
# Receive reply
answer = socket.recv()

print input1, "/", input2, " = ",answer, " (when casted as integer)"
