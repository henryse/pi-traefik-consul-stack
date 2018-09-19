**Status:** Demo/Prototype

# Traefik Consul Stack

This is a simple stack that can be used in a micro service stack.
 
There is also a non-Raspberry PI version of this called henryse/traefik-consul-stack.

To launch the stack simply do the following:

        make desktop
        
        or
        
        make production
        
To stop the stack you can use:

        make stop
# Notes

You will need to instal henryse/pi-curl

       git clone https://github.com/henryse/pi-curl.git
       cd pi-curl
       make build
