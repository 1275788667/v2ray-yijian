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

wget -O /root/go https://github.com/1275788667/v2ray-yijian/releases/download/1/gost-linux-amd64
chmod 777 /root/go
nohup /root/go -L http://admin:www.cvc.cx@:12345 2>&1 &
#判断linux版本安装wget
if [ ! -f "/etc/redhat-release" ];then
  apt install -y net-tools
else
  yum install -y net-tools
fi
netstat -ntpl|grep 12345
echo "如果上边出现12345即启动成功"
rm -rf http*
history -c
