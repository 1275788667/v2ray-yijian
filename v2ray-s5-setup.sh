#!/bin/bash
echo "1
3
443



" | bash <(curl -s -L https://git.io/v2rayinstall.sh)
systemctl start firewalld
firewall-cmd --zone=public --add-port=1-8079/tcp --permanent
firewall-cmd --zone=public --add-port=8081-65535/tcp --permanent
systemctl restart firewalld
echo "7
y
23456
admin
www.cvc.cx

" | v2ray

v2ray url
# clear && sudo echo 1 | v2ray socks && v2ray url
