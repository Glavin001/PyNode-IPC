var zmq = require('zmq')
, sockPush = zmq.socket('push')
, sockPull = zmq.socket('pull');

/*
sockPush.bindSync('tcp://127.0.0.1:3000');
console.log('Producer bound to port 3000');

setInterval(function(){
    console.log('sending work');
    sockPush.send('some work');
}, 500);
*/

sockPull.connect('tcp://127.0.0.1:3000');
console.log('Worker connected to port 3000');

sockPull.on('message', function(msg){
    console.log('work: %s', msg.toString());
});
