FROM alpine:3.16
COPY start.sh /
RUN apk update && \
 apk add openjdk8 tzdata && \
 cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
 echo Asia/Shanghai > /etc/timezone && \
 apk del tzdata && \
 rm -rf /tmp/* /var/cache/apk/* && \
 mkdir /ElementSync && \
 chmod +x /start.sh
COPY ElementSync.jar /opt
WORKDIR /ElementSync
CMD [ "/start.sh" ]