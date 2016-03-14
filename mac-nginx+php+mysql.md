# Install Nginx PHP 7 Mysql on Mac

## Install Nginx
Mac默认是有nginx的。如果想重新安装也可以：
```
brew install php
```

如果需要安装其他 nginx 的版本，可以 "brew edit nginx" 打开修改 nginx 的安装信息包 formula，默认会用 vi 打开，在文件开头处修改nginx相应版本的下载地址就行。

brew 执行完后，nginx 就安装好了。可以用以下指令对 nginx 进行操作：

```
#打开 nginx
sudo nginx

#重新加载配置|重启|停止|退出 nginx
nginx -s reload|reopen|stop|quit

#测试配置是否有语法错误
nginx -t
```

## Install PHP 7
1. Download [php-7.0.2.tar.gz](http://cn2.php.net/get/php-7.0.2.tar.gz/from/this/mirror)
1. 解压安装
```
tar -zxvf php-7.0.2.tar.gz

cd  php-7.0.2

./buildconf

./configure --prefix=/usr/local/php7 --enable-fpm --with-fpm-user=www --with-fpm-group=www --with-mysqli --with-pdo-mysql --with-iconv-dir --with-freetype-dir --with-jpeg-dir --with-png-dir --with-zlib --with-libxml-dir=/usr --enable-xml --disable-rpath --enable-bcmath --enable-shmop --enable-sysvsem --enable-inline-optimization --with-curl --enable-mbregex --enable-mbstring --with-mcrypt --enable-ftp --with-gd --enable-gd-native-ttf --with-openssl --with-mhash --enable-pcntl --enable-sockets --with-xmlrpc --enable-zip--enable-soap --without-pear --with-gettext --disable-fileinfo --enable-maintainer-zts

make

make install

#最后来测试一把
/usr/local/php7/bin/php -v

PHP 7.0.2 (cli) (built: Jan 24 2016 02:37:03) ( ZTS )
Copyright (c) 1997-2015 The PHP Group
Zend Engine v3.0.0, Copyright (c) 1998-2015 Zend Technologies
```

上面的过程如果顺利的话。php7就安装成功了，如果有错误的话那还是得解决一下，这里就贴出几个我在网站上看到的安装过程中遇到的一些错误：

1. 错误1: `configure: error: jpeglib.h not found.`

    解决办法：
    ```
    sudo brew install libjpeg
    ```

    这一步，如果你已经安装过的话，直接跳过。

1. 错误2: `configure: error: png.h not found.`

    解决办法：
    ```
    sudo brew install libpng
    ```

    这里我使用brew安装libpng的时候老是提示download失败，于是干脆使用源码安装了，如下：

    ```
    tar -zxvf libpng-1.6.16.tar.gz
    cd libpng-1.6.16
    ./configure
    make
    sudo make install
    ```
    libpng下载地址： [libpng-1.6.16.tar.gz](http://www.imagemagick.org/download/delegates/libpng-1.6.16.tar.gz)

1. 错误3: `configure: error: Cannot locate header file libintl.h` (我遇到这个错误)

    解决办法：

    1. 安装 gettext
     ```
     sudo brew install gettext
     ```

    1. 编辑 configure 文件，找到 `$PHP_GETTEXT /usr/local /usr` 在后面加上gettext的路径 `$PHP_GETTEXT /usr/local /usr /usr/local/opt/gettext`

    1. 重新执行配置（跟上面一模一样，没变化）

     ```
     ./configure --prefix=/usr/local/php7 --enable-fpm --with-fpm-user=www --with-fpm-group=www --with-mysqli --with-pdo-mysql --with-iconv-dir --with-freetype-dir --with-jpeg-dir --with-png-dir --with-zlib --with-libxml-dir=/usr --enable-xml --disable-rpath --enable-bcmath --enable-shmop --enable-sysvsem --enable-inline-optimization --with-curl --enable-mbregex --enable-mbstring --with-mcrypt --enable-ftp --with-gd --enable-gd-native-ttf --with-openssl --with-mhash --enable-pcntl --enable-sockets --with-xmlrpc --enable-zip--enable-soap --without-pear --with-gettext --disable-fileinfo --enable-maintainer-zts
     ```

## Nginx ＋ php-fpm
在使用nginx时使用php-fpm执行php代码。
我本地原来是5.5的，需要替换成7.0。过程如下：
1. 如果已经装过php-fpm，请先确认安装位置：
 
 ```
 which php-fpm
 # 我本地:
 # /usr/sbin/php-fpm
 ```

1. 使用刚安装好的php-fpm替换
 ```
 cp /usr/local/php7/sbin/php-fpm /usr/sbin/php-fpm
 
 # 查看下
 php-fpm -v
 
 # PHP 7.0.2 (fpm-fcgi) (built: Jan 24 2016 02:37:18)
 # Copyright (c) 1997-2015 The PHP Group
 # Zend Engine v3.0.0, Copyright (c) 1998-2015 Zend Technologies
 ```

 注意: 

 如果是Mac，在升级到10.11.3的时候，可能会遇到权限问题如提示：`...: Operation not permitted`。这个据说是Rootless机制，[请参考这里](https://www.zhihu.com/question/36108835)。
 
 我的解决办法是先执行：`echo $PATH` 看下输出，我的如下：

 `/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:...`

 所以按照系统指令查找顺序，我把php-fpm放到`/usr/local/bin/`下了（注意看开头，第一个被查找），问题得到解决。

1. 执行php-fpm
    ```
    sudo php-fpm
    ```

1. 配置nginx.conf

    给出完整conf供参考：

    ```
    server {
        listen 80;
        server_name localhost;
        expires max;

        access_log   /var/log/nginx/local.access.log;
        error_log    /var/log/nginx/local.error.log;

        # /Users/quentin/workspace/project/local是我本地的根目录
        root /Users/quentin/workspace/project/local;

        location / {
            root /Users/quentin/workspace/project/local;
        }

        #proxy the php scripts to php-fpm  
        location ~ \.php$ {
            include /usr/local/etc/nginx/fastcgi.conf;
            fastcgi_intercept_errors on; 
            fastcgi_param  SCRIPT_FILENAME $document_root$fastcgi_script_name;
            fastcgi_pass   127.0.0.1:9000; 
        }   


    }

    # 业务项目，index.php作为入口的配置
    server {
        listen       80;
        server_name  www.angejia;

        access_log   /var/log/nginx/app-site.access.log;
        error_log    /var/log/nginx/app-site.error.log;

        root /Users/quentin/workspace/project/angejia/app-site/public;

        index index.php;

        location / {
            try_files $uri /index.php$is_args$args;
        }

        location ~ \.php$ {
            include /usr/local/etc/nginx/fastcgi.conf;
            fastcgi_intercept_errors on; 
            fastcgi_param  SCRIPT_FILENAME $document_root$fastcgi_script_name;
            fastcgi_pass   127.0.0.1:9000; 
        }

    }
    ```
1. phpinfo

    在`/Users/quentin/workspace/project/local`下新建index.php，内容：

    ```
    <?php
    phpinfo();
    ```

1. 重启nginx,访问 localhost/index.php

    ```
    sudo nginx -s reload
    ```

    正常的话就能看到php的信息了。

## Install Mysql
    
    Todo


## Reference
- [PHP 7下载](http://cn2.php.net/get/php-7.0.2.tar.gz/from/this/mirror)
- [Mac 下 Nginx、MySQL、PHP-FPM 的安装配置](http://blog.csdn.net/iamduoluo/article/details/38346291)
- [MAC下尝试PHP7 alpha版本的安装](http://segmentfault.com/a/1190000002904436)