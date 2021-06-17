# #!/bin/sh

rc-service telegraf start

grafana-server -config "/etc/grafana.ini" -homepath "/usr/share/grafana"

tail -f /dev/null