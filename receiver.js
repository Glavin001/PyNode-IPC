var zmq = require('zmq')
var port = 3000;

var socket = zmq.socket('rep');

  socket.identity = 'server' + process.pid;

  socket.bind("tcp://127.0.0.1:"+port, function(err) {
    if (err) throw err;
    console.log("Bound to port "+port+".");

    socket.on('message', function(data) {
      //console.log(socket.identity + ': received ' + data.toString());
      console.log("Received: "+data.toString());
      data = JSON.parse( data );
      var A = data["A"];
      var B = data["B"];
      //console.log(A, B);
      var answer = Math.floor( A / B );
      console.log("Sent: "+answer);
      socket.send(answer);
    });
});
