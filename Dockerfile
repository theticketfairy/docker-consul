From busybox:ubuntu-14.04

ADD webui /
ADD consul /bin/

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp

ENTRYPOINT ["consul", "agent", "-server", "-data-dir", "/data", "-ui-dir", "/webui"]
