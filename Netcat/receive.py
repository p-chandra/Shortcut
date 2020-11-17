import socket

UDP_IP = "127.0.0.1"
PORT = 5005

var = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
var.bind((UDP_IP,PORT))

while True:
    data, addr = var.recvfrom(1024) #buffer size is 1024
    print("received message: %s" % data)
