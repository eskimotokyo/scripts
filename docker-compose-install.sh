#!/bin/bash

# 将 Compose 文件下载到/usr/local/bin目录
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 
# 将该文件设置为可执行
sudo chmod +x /usr/local/bin/docker-compose
 
# 显示安装成功的消息
echo "Docker Compose安装完成！"

# 打印 Compose 的版本
docker-compose --version
