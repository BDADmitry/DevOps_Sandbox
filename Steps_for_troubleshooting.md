## Steps for troubleshooting

### for Windows (on local PC):

1.  Check the status of the wireless network adapter on local PC using:
    - ipconfig -all;
    - netsh > wlan > show interfaces.

2.  Check the resolution of dns for my server using nslookup (domain name).
Expected result : hostname resolved to IP address.

3.  Check default gateway response (in my case it is IP address of home wi-fi router) using ping (router IP address).

4.  Check routing table using route print.

5.  Check remote server response using:
    - ping (server IP address);
    - pathping (server IP address).
    For me pathping more preferable - it provide more information.

6.  If local checks passed success, then (for example) check the state of server from the cloud provider / hosting console (AWS Console, Azure Portal, hosting control panel).
---
## Steps for troubleshooting

### for Linux (on local PC):

1.  Check the status of the wireless network adapter on local PC using:
    - ip addr show;
    - lshw -C network.

2.  Check the resolution of dns for my server using:
    - nslookup (domain name);
    - dig (domain name) +trace.
Expected result : hostname resolved to IP address.

3.  Check default gateway response (in my case it is IP address of home wi-fi router) using ping (router IP address).

4.  Check routing table using ip r.

5.  Check remote server response using:
    - ping (server IP address);
    - traceroute (server IP address);
    - mtr (server IP address).

6.  If local checks passed success, then (for example) check the state of server from the cloud provider / hosting console (AWS Console, Azure Portal, hosting control panel).