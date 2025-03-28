ARG BUILD_FROM
FROM $BUILD_FROM

# Installation von ufw und iptables
RUN apk add --no-cache ufw iptables

# Deaktivierung des Setzens von sysctl-Werten und Abschalten von IPv6 in der UFW-Konfiguration
RUN sed -i 's/IPT_SYSCTL=yes/IPT_SYSCTL=no/' /etc/default/ufw && \
    sed -i 's/IPV6=yes/IPV6=no/' /etc/default/ufw

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
