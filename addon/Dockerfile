ARG BUILD_FROM
FROM $BUILD_FROM

FROM alpine:3.14

# Installiere ufw und andere notwendige Pakete
RUN apk add --no-cache ufw

# Kopiere das Startskript in den Container
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
