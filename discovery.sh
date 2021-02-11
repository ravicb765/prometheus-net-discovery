#!/bin/bash
echo "starting prometheus-net-discovery"
/bin/prometheus-net-discovery -interval 10m -networks $Subnet --filesdpath /files &
sleep 5;
/bin/prometheus --web.enable-admin-api --config.file=/etc/prometheus/prometheus.yml --storage.tsdb.path=/prometheus_storage --web.console.libraries=/usr/share/prometheus/console_libraries --web.console.templates=/usr/share/prometheus/consoles --web.enable-lifecycle --storage.tsdb.no-lockfile --storage.tsdb.allow-overlapping-blocks --storage.tsdb.retention.time=30d
