import socket

#AF_INET = IPv4  
#SOCK_STREAM = TCP = connection based protocol
#SOCK_DGRAM = UDP = datagram based protocol
var = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

UDP_IP = "127.0.0.1"
PORT = 5005
MESSAGE = b'1'

while MESSAGE != b'0':
    MESSAGE = input("Enter a message: ").encode('utf-8')
    var.sendto(MESSAGE, (UDP_IP, PORT))

