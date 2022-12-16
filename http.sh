wget -O /root/go https://github.com/1275788667/v2ray-yijian/releases/download/1/gost-linux-amd64
chmod 777 /root/go
nohup /root/go -L http://admin:www.cvc.cx@:12345 2>&1 &
#判断linux版本安装wget
if [ ! -f "/etc/redhat-release" ];then
  apt install -y lsof
else
  yum install -y lsof
fi
lsof -i:12345
echo "如果上边出现12345即启动成功"
rm -rf http*
history -c
