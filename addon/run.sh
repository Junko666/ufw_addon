#!/bin/sh
set -e

ufw default deny incoming
ufw allow from 192.168.0.2 to any port 8123 proto tcp
ufw allow from 192.168.0.2 to any port 443 proto tcp
ufw allow from 192.168.0.2 to any port 22 proto tcp
ufw --force enable
