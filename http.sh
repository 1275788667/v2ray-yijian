wget -O /root/go https://github.com/1275788667/v2ray-yijian/releases/download/1/gost-linux-amd64
nohup /root/go -L http://admin:www.cvc.cx@:12345 &
yum install -y lsof;apt install -y lsof;
lsof -i:12345
echo "如果上边出现12345即启动成功"
rm -rf http*
history -c
