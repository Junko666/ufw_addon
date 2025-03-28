ARG BUILD_FROM
FROM $BUILD_FROM

FROM alpine:3.14

# Installiere ufw, libcap und iptables
RUN apk add --no-cache ufw libcap iptables

# Setze zusätzliche Capabilities für iptables, damit UFW mehr Rechte besitzt
RUN setcap cap_net_admin,cap_net_raw+ep $(which iptables) || true

# Falls erforderlich: Host-Kernelmodule bereitstellen (dieser Schritt benötigt dann
# in der Laufzeit ein Volume-Mount von /lib/modules)
# VOLUME ["/lib/modules"]

# Kopiere das Startskript in den Container
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
