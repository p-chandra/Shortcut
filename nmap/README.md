## Scan
```
nmap 192.168.0.1
nmap www.google.com
namp 192.168.0.0/24
```

## Scan Multiple Hosts
```
nmap 192.168.0.*
nmap 192.168.0.1-4
nmap 192.168.0.1,2,3
```

## Exclude host
```
nmap 192.168.0.* --exclude 192.168.0.2
```

## Specify Port
```
nmap -p 80,443 192.168.0.1
nmap -p 80-443 192.168.0.1
nmap -p- 192.168.0.1  NOTE:scans all 65*** ports
```
----------------------------------------------------------------------------------------------
## Give all information. 
Without -v, nmap only returns critical information
```
nmap -v 192.168.0.1 
```

## Find info regarding OS
```
nmap -A 192.168.0.1
nmap -O 192.168.0.1
```

## Info about Sevice Version
You may need to detect service and version information from open ports. 
Useful for troubleshooting, scanning for vulnerabilities, or locating services that need to be updated.
```
nmap -sV 192.168.0.1
```

## Scan using TCP SYN: Used to scan in stealth
```
nmap -sS 192.168.0.1
```
## Scan using TCP ACK: Used to check Firewall settings
```
nmap -sA 192.168.0.1
```

## Identify Hostname
```
nmap -sL 192.168.0.1
```
## Scan to see which Servers are active
```
nmap -sP 192.168.0.0/24
```

## Find Host Interfaces, Routes, and Packets aka wireshark
```
nmap --iflist 192.168.0.1  NOTE:finds host interfaces, print interfaces, and routes
nmap --packet-trace 192.168.0.1   NOTE:show packets sent and received
```

## Scan using TCP
```
nmap -sT 192.168.0.1
```

## Scan using UDP Ports
```
nmap -sU 192.168.0.1
```

## Search for DDOS reflection UDP services
```
nmap –sU –A –PN –n –pU:19,53,123,161 –script=ntp-monlist,dns-recursion,snmp-sysdescr 192.168.0.0/24
```

## Detect Heartbleed SSL
```
nmap -sV -p 443 --script=ssl-heartbleed 192.168.0.0/24
```
