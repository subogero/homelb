# NAME

homelb - Home Load Balancer

# SYNOPSIS

    homelb add omxui --port 80 --server foo:31100 --server bar:3000
    homelb add omxui --server baz:8080
    homelb del omxui --server foo:31100
    homelb del omxui

# DESCRIPTION

homeLB allows you to access your home web services with their own name,
own IP address, usually on port 80, instead of the original exotic ports.

You can even run multiple instances of each service, and access them
via a single location. Any kind of reverse proxying is supported too.

homeLB uses a combination of macvlan interfaces, dhcpcd and HAproxy.
It assumes a home router running DNSmasq or similar software,
allowing access to all the devices on your home LAN by name.

# EXAMPLE

Simplify the URL of the Transmission Web UI as seen below.

    http://raspberry:9091
    http://trans

On a Linux device on the home network:

    homelb add trans --port 80 --server raspberry:9091
