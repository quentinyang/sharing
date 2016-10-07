# 快速配置好服务器环境（一键配置）

## shell 脚本
```
# Update apt-get
sudo apt-get update && sudo apt-get upgrade

# Nginx
sudo apt-get install nginx

# nginx -v
# nginx version: nginx/1.10.0 (Ubuntu)

# PHP
sudo apt-get install php7.0

# MySQL
sudo apt-get install mysql-server

# php-mysql
sudo apt-get install php-mysql
sudo apt-get install php-dom



```

## 接下来是配置：

```
# Config
sudo vi /etc/nginx/sites-enabled/default
```

```
# nginx 配置
server {
    listen              80;

    root                /var/www/webapp/root;
    index              index.php;

    server_name quentinyang.com;

    access_log /var/log/nginx/site-access.log;
    error_log /var/log/nginx/site-error.log;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    location ~ [^/]\.php(/|$) {
        fastcgi_split_path_info ^(.+?\.php)(/.*)$;
        if (!-f $document_root$fastcgi_script_name) {
                return 404;
        }
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        fastcgi_pass unix:/run/php/php7.0-fpm.sock;
        fastcgi_index index.php;
        include fastcgi_params;
    }

    location ~ /\.ht {
        deny all;
    }

}
```

