PyNode-IPC
==========

Node.js and Python Inter-Process Communication example using ZeroMQ. For CSCI 3430 class assignment. 

`Github Repository`: https://github.com/Glavin001/PyNode-IPC 

### Quick One Line Terminal Installation
Copy and paste into your Terminal:
```bash
git clone https://github.com/Glavin001/PyNode-IPC && cd PyNode-IPC && ./install.sh
```

## Description of Assignment
See [L10.pdf](L10.pdf) for complete list of questions.

## Answers
See [ANSWERS.md](ANSWERS.md) for complete list of answers.

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
- `Mac`, installation and test all ran successfully.
- `Ubuntu`, installation and test all ran successfully.
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
