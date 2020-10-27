#!/bin/ash
mkdir -p /etc/hosts.d/
touch /etc/hosts.d/docker
/bin/docker-gen -watch /srv/docker-gen.tmpl /etc/hosts.d/docker &
sleep 2
/usr/sbin/dnsmasq -d -D -E --hostsdir /etc/hosts.d $@
