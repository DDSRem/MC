FROM ddsderek/alpine:3.16.0

ENV TAG=v1.0.0-rc3

RUN cd /opt && \
    apk update && \
    apk add --no-cache ffmpeg wget && \
    wget https://github.com/Mrs4s/go-cqhttp/releases/download/${TAG}/go-cqhttp_linux_amd64.tar.gz && \
    tar -xzvf go-cqhttp_linux_amd64.tar.gz && \
    mv /opt/go-cqhttp /opt/cqhttp && \
    mv /opt/cqhttp /usr/bin && \
    chmod +x /usr/bin/cqhttp && \
    mkdir /data && \
    apk del wget && \
    rm -rf /var/cache/apk/* && \
    rm -rf /opt && \
    mkdir /opt

WORKDIR /data

VOLUME [ "/data" ]

CMD [ "/usr/bin/cqhttp" ]