# netdbg - Container network debugger

This container contains a bunch of useful tools to debug networks from the containers themselves. Useful inside container clusters, such as K8s, where the application containers don't usually contain toolset for debugging.

Currently this container comes with following tools:
* dhcping
* iftop
* iperf
* iputils
* net-tools
* nmap
* nmap-ncat
* strace
* tcpdump
* traceroute

## Build

```
docker build -t netdbg .
```

## Usage

```
docker run -ti --name netdbg netdbg /bin/bash
```
