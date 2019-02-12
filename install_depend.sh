
# 需要 docker 及 docker-compose
sudo apt-get update 
sudo apt-get install docker.io -y
sudo apt-get install python-pip -y
pip install docker-compose

# or 直接二进安装
# 安装docker-compose
# 参考https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-16-04
#sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)"
#sudo chmod +x /usr/local/bin/docker-compose