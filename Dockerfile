FROM fedora:32

RUN dnf -y update && dnf -y install \
    dhcping \
    iftop \
    iperf \
    iputils \
    net-tools \
    nmap \
    nmap-ncat \
    strace \
    tcpdump \
    traceroute \
    && dnf clean all
