# Nginx相关


## Example

### 单页面常用：一切都重定向到index.html

```
server {
    listen       80;

    server_name  quentin.io;
    access_log   /var/log/nginx/access.log;
    error_log    /var/log/nginx/error.log;

    root /var/www/built;
    index index.html;

    location / {
      try_files $uri /index.html;
    }

    # 不存在的资源 返回404
    location ~* \.(js|css|ico|gif|jpg|png|swf|flv)$ {
        try_files $uri /404.html;
    }

    location = /404.html {
        # 指定返回404状态和内容
        return 404 "Not Found\n";
    }
}
```

### 重定向到index.php
```
server {
        listen       80;

        server_name  quentin.io;
        access_log   /var/log/nginx/access.log;
        error_log    /var/log/nginx/error.log;

        root /var/www/app;
        index index.php;

        location / {
                try_files $uri /index.php$is_args$args;
        }

        location ~ \.php$ {
                fastcgi_pass unix:/run/php/php-fpm.sock;
                fastcgi_split_path_info ^(.+\.php)(/.*)$;
                include fastcgi_params;
                fastcgi_param  SCRIPT_FILENAME $document_root$fastcgi_script_name;
                fastcgi_param  HTTPS off;
        }
}
```

### Nodejs代理

```
upstream fs {
    server 127.0.0.1:3000;
    keepalive 64;
}

server {
    listen 80;
    server_name fs.angejia;
    access_log /var/log/nginx/fs.access.log;
    error_log /var/log/nginx/fs.error.log;

    location / {
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header Host  $http_host;
        proxy_set_header X-Nginx-Proxy true;
        proxy_set_header Connection "";
        proxy_pass      http://fs;

    }

}
```

## 资料
1. [Rewrite规则](http://seanlook.com/2015/05/17/nginx-location-rewrite/)