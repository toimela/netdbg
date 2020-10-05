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

In addition to the tools, the container can be launched as a simple webserver. Webserver is just a hello-world made with python flask, but will be suitable for http debugging inside kubernetes clusters.

## Build

```
docker build -t toimela/netdbg .
```

## Usage

### Client
```
docker run -ti --name netdbg toimela/netdbg /bin/bash
```

### Server
```
docker run -d -p 80:80 --name netdbg-server toimela/netdbg

# Or with Kubernetes:
kubectl create -f manifests/netdbg-server.yaml
```
