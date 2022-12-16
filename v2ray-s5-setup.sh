#!/bin/bash
red='\e[91m'
green='\e[92m'
yellow='\e[93m'
magenta='\e[95m'
cyan='\e[96m'
none='\e[0m'
_red() { echo -e ${red}$*${none}; }
_green() { echo -e ${green}$*${none}; }
_yellow() { echo -e ${yellow}$*${none}; }
_magenta() { echo -e ${magenta}$*${none}; }
_cyan() { echo -e ${cyan}$*${none}; }

echo "1
3
443



" | bash <(curl -s -L https://raw.githubusercontent.com/1275788667/v2ray/master/install.sh)
#https://git.io/v2ray.sh
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

clear
v2ray socksinfo
v2ray url
echo -e "${green}网站建设 代理等网络相关问题咨询QQ: ${none}${cyan}1275788667${none}"
