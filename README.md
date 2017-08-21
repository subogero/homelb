# homeLB - Home Load Balancer

homeLB allows you to access your home web services with their own name,
own IP address, usually on port 80, instead the original exotic ports.

You can even run multiple instances of each service, and access them
via a single location. Any kind of reverse proxying is supported too.

homeLB uses a combination of macvlan interfaces, dhcpcd and HAproxy.
It assumes a home router running DNSmasq or similar software,
allowing access to all the devices on your home LAN by name.
