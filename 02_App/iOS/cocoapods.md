# Cocoapods

## Install [参考链接](https://segmentfault.com/a/1190000003784636)

```
sudo gem install cocoapods --pre
```

如果提示
```
ERROR:  Error installing cocoapods:
    activesupport requires Ruby version >= 2.2.2.
```

就需要升级ruby。

```
<!-- 升级ruby -->
curl -L get.rvm.io | bash -s stable
source ~/.profile
source ~/.rvm/scripts/rvm
```

升级完毕，安装Ruby

```
<!-- 列出ruby可安装的版本信息 -->
rvm list known
<!-- 安装一个ruby版本 -->
rvm install 2.2.4
```

安装完，查看已安装的Ruby

```
rvm list
<!-- 如果想设置为默认版本，可以用这条命令来完成 -->
rmv use 2.2.4 --default
```

## 使用pod安装依赖

一切安装好了，使用如下命令安装依赖。（一般使用cocoapods依赖的，项目下都会有`Podfile`文件）

```
pod install --verbose
```

