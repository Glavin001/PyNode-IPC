import zmq
import time
import sys
import json

port = "3000"
if len(sys.argv) > 1:
    port =  sys.argv[1]
    int(port)

context = zmq.Context()
socket = context.socket(zmq.REP)

socket.bind("tcp://127.0.0.1:%s" % port)
print "Bound to port %s." % port

while True:
    message = socket.recv()
    print "Received: "+message
    data = json.loads(message)
    A = data["A"]
    B = data["B"]
    answer = int( A / B )
    print "Sent: "+str(answer)
    socket.send(json.dumps(answer))
