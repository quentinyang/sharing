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

sudo make install

#最后来测试一把

/usr/local/php7/bin/php -v

PHP 7.0.0alpha1 (cli) (built: Jun 14 2015 18:24:50) 
Copyright (c) 1997-2015 The PHP Group
Zend Engine v3.0.0-dev, Copyright (c) 1998-2015 Zend Technologies
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



## Reference
- [PHP 7下载](http://cn2.php.net/get/php-7.0.2.tar.gz/from/this/mirror)
- [Mac 下 Nginx、MySQL、PHP-FPM 的安装配置](http://blog.csdn.net/iamduoluo/article/details/38346291)