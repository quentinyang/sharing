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