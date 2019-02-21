# $ docker run -it --rm  -v ${PWD}/archivoscompartidos:/home/fulanito 

FROM alpine:latest

RUN apk --update upgrade && apk --update --no-cache add vsftpd
RUN adduser -h /home/./fulanito -s /bin/false -D fulanito

ADD entrada.sh /
VOLUME /home/fulanito

EXPOSE 20 21 10090-10100

CMD /entrada.sh
