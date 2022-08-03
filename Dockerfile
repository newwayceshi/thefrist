FROM alpine

ADD kami.sh /kami.sh
ADD kano /usr/local/bin/kano

RUN apk update && \
    apk add -f --no-cache ca-certificates wget unzip bash && \
    chmod 777 /kami.sh && \
    chmod 777 /usr/local/bin/kano

CMD /kami.sh