var zmq = require('zmq');

// Source for `ask` function: 
// http://st-on-it.blogspot.ca/2011/05/how-to-read-user-input-with-nodejs.html 
function ask(question, format, callback) {
 var stdin = process.stdin, stdout = process.stdout;
 
 stdin.resume();
 stdout.write(question + ": ");
 
 stdin.once('data', function(data) {
   data = data.toString().trim();
 
   if (format.test(data)) {
     callback(data);
   } else {
     stdout.write("It should match: "+ format +"\n");
     ask(question, format, callback);
   }
 });
}

var port = 3000;

var socket = zmq.socket('req');

socket.identity = 'client' + process.pid;

socket.connect("tcp://127.0.0.1:"+port);

// Get User input
ask("Enter integer A", /\d+/, function(input1) {
	input1 = parseInt(input1);
		ask("Enter integer B", /\d+/, function(input2) {
			input2 = parseInt(input2);
		
			var data = {"A":input1, "B":input2};
			
			// Ask Question
			socket.send(JSON.stringify(data));
			
			// Receive Answer
			socket.on('message', function(data) {
				var answer = data.toString();
				console.log(input1 + " / " + input2 + " = " + answer +  " (when casted as integer)");

				// Close Caller
				process.exit();
			});
			
	});
});
