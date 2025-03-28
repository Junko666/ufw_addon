#!/bin/sh

# Beispiel: Setze Standard-Regeln
ufw default deny incoming

# Erlaube z. B. den Home Assistant Port (8123) und SSH-Zugriff
ufw allow 8123
ufw allow ssh

# Aktiviere ufw
ufw --force enable

# Hier kannst du zusätzliche Regeln hinzufügen

# Für den Fall, dass der Container sonst automatisch beendet würde,
# kannst du eine Endlosschleife einfügen, damit er weiter läuft:
tail -f /dev/null
