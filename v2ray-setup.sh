#!/bin/bash
echo "1
3
8888



" | bash <(curl -s -L https://git.io/v2rayinstall.sh)
systemctl start firewalld
firewall-cmd --zone=public --add-port=1-8079/tcp --permanent
firewall-cmd --zone=public --add-port=8081-65535/tcp --permanent
systemctl restart firewalld
v2ray url
