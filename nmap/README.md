Scan
nmap 192.168.0.1
nmap google.com

Scan Multiple Hosts
nmap 192.168.0.*
nmap 192.168.0.1-4
nmap 192.168.0.1,2,3

Exclude host
nmap 192.168.0.* --exclude 192.168.0.2

Find info regarding OS
nmap -A 192.168.0.1
nmap -O 192.168.0.1

Scan for Firewall settings
nmap -sA 192.168.0.1

Info about Sevice Version
You may need to detect service and version information from open ports. 
Useful for troubleshooting, scanning for vulnerabilities, or locating services that need to be updated.
nmap -sV 192.168.0.1

Specify Port
nmap -p 80,443 192.168.0.1
nmap -p 80-443 192.168.0.1
nmap -p- 192.168.0.1  NOTE:scans all 65*** ports

Scan in Stealth mode
nmap -sS 192.168.0.1

Identify Hostname
nmap -sL 192.168.0.1

Scan to see which Servers are active
nmap -sP 192.168.0.0/24

Find Host Interfaces, Routes, and Packets aka wireshark
nmap --iflist 192.168.0.1
nmap --packet-trace 192.168.0.1
