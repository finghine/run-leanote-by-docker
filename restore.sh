
# 安装 mongodb客户端工具
# 安装详见 ：https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
IS_INSTALL_MONGODB=`dpkg --get-selections | grep mongodb-org-tools`
if [ -z "$IS_INSTALL_MONGODB" ]; then
  echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
  sudo apt-get update
  sudo apt-get install mongodb-org-tools  
fi 
# 判断文件是否存在
LEANOTE_INSTALL_DATA='leanote_install_data.tar'
if [ ! -f "$LEANOTE_INSTALL_DATA" ]; then 
 echo " backup file not exist ,can't restore"
  exit
fi

tar xvf $LEANOTE_INSTALL_DATA

DB_IP=`sudo docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' leanote_db_1`
mongorestore -h $DB_IP -d leanote --dir leanote_install_data 
