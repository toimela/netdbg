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
    python3-pip \ 
    && dnf clean all

RUN pip3 install flask

ADD server.py /opt/server.py

ENV FLASK_APP /opt/server.py

CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]
