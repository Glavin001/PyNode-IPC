PyNode-IPC
==========

Node.js and Python Inter-Process Communication example using ZeroMQ. For CSCI 3430 class assignment. 

`Github Repository`: https://github.com/Glavin001/PyNode-IPC 

## Description of Assignment
See [L10.pdf](L10.pdf) for complete list of questions.
> Write code that demonstrates one computer language calling and receiving data back from another 
> language. The first language reads two integers from the user (A, B) and passes them as binary values to a 
> separately compiled function written in a different language. That second function divides the second 
> number into the first (A/B) and returns the result to the caller as an integer. That first language then prints 
> the integer it received from the second language out to screen. Again, the caller must be one language, the 
> receiver a different one. You can use any method of inter-language linking or inter-process communications 
> (CORBA, ZMQ, DCOM, Twisted, Node.JS, dynamic linking. static linking, RPC, etc) but the two parts must be 
> distinctly different and both supplied (for example VB calling C++, Python calling C, C# calling C++, C calling 
> Assembler, Java calling Pascal, etc). Please avoid the simple HTML calling javascript (that’s just too easy). 
> Please identify which languages, which versions of the compiler and which computer operating systems or 
>environments you are using. 

-----

## Dependencies
`libzmq`: https://github.com/zeromq/pyzmq/wiki/Building-and-Installing-PyZMQ#linux 

`PyZMQ`: https://github.com/zeromq/pyzmq

`Zeromq.node`: https://github.com/JustinTulloss/zeromq.node 

## Easy automated installation for Mac & Linux
Run the following in your Terminal with the current working directory being the root of this project:
```bash
./install.sh
```

## Support
- `Mac`, installation and execution all ran successfully.
- `Ubuntu`, not tested.
- `Windows`, not supported.

-----

## Usage
Run the following in your Terminal with the current working directory being the root of this project:

#### `Python` as *Caller* and `Node.js` as *Receiver*:
###### Step 1) Start Node.js Receiver

```bash
node receiver.js
```
###### Step 2) Start Python Caller

```bash
python caller.py
```
###### Step 3) Enter your integers as prompted and try it out!


#### `Node.js` as *Caller* and `Python` as *Receiver*:
###### Step 1) Start Python Receiver

```bash
python receiver.py
```
###### Step 2) Start Node.js Caller

```bash
node caller.js
```
###### Step 3) Enter your integers as prompted and try it out!

-----
