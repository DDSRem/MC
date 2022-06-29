FROM ddsderek/foundations:Alpine3.16.0-java8

COPY ./conf/ElementSync.jar /opt
COPY ./conf/start.sh /

EXPOSE 80 2233 6700

CMD [ "/start.sh" ]