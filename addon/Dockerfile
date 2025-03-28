ARG BUILD_FROM
FROM $BUILD_FROM

FROM alpine:3.14

RUN apk add ufw
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
