# Node js相关

# 使用npm升级nodejs

1. 更新本机npm，如果没权限加上`sudo`

```
npm update –g
```

1. 更新Nodejs：

```
npm install –g n
n v4.2.2
```

n可以下载任意版本的nodejs安装到本机，非常方便。

`n latest` - 是安装最新的。现在最新的是5.x版本的。我们现在还不能升级到最新所以只能指定版本升级。如果不注意的话，这会是个坑。


# npm install提速


```
使用fs.corp.angejia.com:7001镜像全新安装：
real    1m7.579s
user    0m30.384s
sys 0m7.360s

使用fs.corp.angejia.com:7001镜像：
real    0m4.973s
user    0m4.762s
sys 0m0.372s

real    0m4.660s
user    0m4.619s
sys 0m0.311s

real    0m4.918s
user    0m4.822s
sys 0m0.375s
```


```
使用taobao镜像全新安装：
real    0m58.563s
user    0m25.513s
sys 0m6.707s

使用taobao镜像：
real    0m5.893s
user    0m5.458s
sys 0m0.445s

real    0m5.686s
user    0m5.376s
sys 0m0.365s


```

```
# gulp-ufa

'clean'
real    0m1.187s

'deploymain',               (3.059s)
    real    0m4.246s
'copylibs',                      (0.55s)
    real    0m4.800s
'scripts',                          (3.059s)
    real    0m8.893s
'styles',                           (0.48s)
    real    0m9.376s
'images',                       (0.64)
    real    0m10.026s
'fonts'                             (0.56s)
    real    0m10.593s
'deploy4cdn'                 (1.490s)
    real    0m12.084s



```

- [Speeding Up NPM Installs](https://lincolnloop.com/blog/speeding-npm-installs/)