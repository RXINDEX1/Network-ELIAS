Network ELIAS

A lightweight real-time network traffic monitor built with Bash, tcpdump, and awk.

Network ELIAS displays selected network connections in real time, filters configured IP ranges, removes duplicate connections, and provides colorized terminal output.

Features

- Real-time network traffic monitoring
- IPv4 and IPv6 filtering
- Duplicate connection detection
- Colorized terminal output
- Simple Bash implementation
- Lightweight and easy to use

Requirements

- Linux
- Bash
- tcpdump
- awk
- figlet
- sudo

Installation

Clone the repository:

git clone https://github.com/RXINDEX1/Network-ELIAS.git
cd Network-ELIAS

Make the script executable:

chmod +x elias.sh

Usage

Run:

sudo ./elias.sh

Example output:

[ 1 ] 192.168.1.10 -> 149.154.x.x
[ 2 ] 192.168.1.10 -> 91.108.x.x
[ 3 ] fe80::xxxx -> 2001:b28:xxxx

Configuration

IP filters can be modified inside the "wanted()" function in "elias.sh".

You can customize the monitored ranges for your own authorized network-monitoring environment.

Legal & Ethical Use

Network ELIAS is intended for educational purposes, network troubleshooting, and monitoring systems or networks that you own or are explicitly authorized to monitor.

Do not use this tool to inspect network traffic without appropriate authorization.

Contributing

Issues, suggestions, and pull requests are welcome.

License

This project is licensed under the MIT License.
