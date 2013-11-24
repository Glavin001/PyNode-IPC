var zmq = require('zmq')
//, sockPush = zmq.socket('push')
, sockPull = zmq.socket('rep');

/*
sockPush.bindSync('tcp://127.0.0.1:3000');
console.log('Producer bound to port 3000');

setInterval(function(){
    console.log('sending work');
    sockPush.send('some work');
}, 500);
*/

/*
sockPull.connect('tcp://127.0.0.1:3000');
console.log('Worker connected to port 3000');

sockPull.on('message', function(msg){
    console.log('work: %s', msg.toString());
});
*/

var socket = zmq.socket('rep');

  socket.identity = 'server' + process.pid;

  socket.bind("tcp://127.0.0.1:3000", function(err) {
    if (err) throw err;
    console.log('bound!');

    socket.on('message', function(data) {
      console.log(socket.identity + ': received ' + data.toString());
      data = JSON.parse( data );
      var A = data["A"];
      var B = data["B"];
      console.log(A, B);
      var answer = Math.floor( A / B );
      socket.send(answer);
    });
});