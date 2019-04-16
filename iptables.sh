#!/bin/sh
### BEGIN INIT INFO
# Provides:          iptables
# Required-Start:
# Required-Stop:
# Should-Start:
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# X-Interactive:
# Short-Description: Iptables basico endpoint linux -> startup: update-rc.d iptables.sh defaults
### END INIT INFO
# Required-Start y Stop para los scripts de dependencias

# Flush
iptables -F
iptables -X

# Politica por defecto
iptables -P INPUT DROP
iptables -P OUTPUT ACCEPT
iptables -P FORWARD DROP

# loopback
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT

# Trafico relacionado con conexiones permitidas aceptado
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Solo entrada de puerto 6300 (por ejemplo, para SSH cambiando puerto estandar, etc)
iptables -A INPUT -p tcp -m tcp --dport 6300 -j ACCEPT
