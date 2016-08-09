# 部署新服务器脚本

```
# install make
sudo apt-get install make
sudo apt-get install libsqlite3-dev

# Nodejs installation
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

## [nodemon](https://github.com/remy/nodemon)
sudo npm install -g nodemon

# [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
sudo apt-get install git-all

# MySQL installation
sudo apt-get update
sudo apt-get install mysql-server
## 安装指定版本：sudo apt-get install mysql-server-5.5
#sudo mysql_secure_installation
#sudo mysql_install_db

# anpm
mkdir -p /srv/code/anpm
cd anpm
git clone https://github.com/FSKS/cnpmjs.org.git
cd cnpmjs.org/

echo 'Congratulation!'
```




# 额外需要配置的

## Git
```
ssh-keygen -t rsa -C "quentin.yang@angejia.com"
```