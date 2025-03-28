#!/bin/sh

ufw default deny incoming
ufw allow 8123
ufw allow ssh
ufw --force enable
