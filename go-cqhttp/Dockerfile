FROM alpine:3.16
COPY go-cqhttp /
COPY config.yml /
COPY start.sh /
RUN mkdir /data
CMD [ "/start.sh" ]