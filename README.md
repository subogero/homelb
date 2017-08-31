# NAME

homelb - Home Load Balancer

# SYNOPSIS

Start/restart configured virtuals

    homelb

Add a new virtual, or a new backend server to an existing virtual

    homelb add omxui --port 80 --server foo:31100 --server bar:3000
    homelb add omxui --server baz:8080

Delete backend from existing virtual, or the entire virtual

    homelb del omxui --server foo:31100
    homelb del omxui

List virtuals or see details of one

    homelb get
    homelb get omxui

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

# FILES

* `/var/homelb.yml` Database of all your virtuals
* `/var/homelb.macv` Virtual macvlan link mapping
* `/var/homelb_ha.cfg` HAproxy configuration
* `/var/homelb_ha.pid` HAproxy PID file
