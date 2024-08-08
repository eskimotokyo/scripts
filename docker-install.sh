#!/bin/bash
 
# 更新软件包列表
sudo apt-get update
 
# 安装必要的软件包
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
 
# 安装GPG证书
sudo install -m 0755 -d /etc/apt/keyrings
mkdir /etc/apt/keyrings
curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://mirrors.aliyun.com/docker-ce/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# 再次更新
sudo apt-get update
 
# 安装docker-ce
sudo apt install docker-ce docker-ce-cli containerd.io
 
# 显示安装成功的消息
echo "Docker安装完成！"
