
# 判断docker是否安装
IS_DOCKER_INSTALL=`dpkg --get-selections | grep docker.io`
if [ -z "$IS_INSTALL_MONGODB" ]; then
sudo apt-get install docker.io -y 
if

# 安装docker-compose
# 参考https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-16-04
sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)"
sudo chmod +x /usr/local/bin/docker-compose

# 运行
sudo docker-compose build
sudo docker-compose up -d

