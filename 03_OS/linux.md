# Linux常用操作

## 将命令脚本添加到Path

 1. 直接在命令行中设置PATH
     ```PATH=$PATH:/usr/local/apache/bin```

     使用这种方法,只对当前会话有效，也就是说每当登出或注销系统以后，PATH设置就会失效。 

 1. 在profile中设置PATH
    ```vi /etc/profile```

     找到export行，在下面新增加一行，内容为：export PATH=$PATH:/usr/local/apache/bin。
     注：＝ 等号两边不能有任何空格。这种方法最好,除非手动强制修改PATH的值,否则将不会被改变。
     编辑/etc/profile后PATH的修改不会立马生效，如果需要立即生效的话，可以执行
     ```source profile```

 1. 在当前用户的profile中设置PATH
     ```vi ~/.bash_profile```
     修改PATH行,把/usr/local/apache/bin添加进去,如：PATH=$PATH:$HOME/bin:/usr/local/apache/bin。
     # source ~/.bash_profile
     让这次的修改生效。
     注：这种方法只对当前用户起作用的,其他用户该修改无效。  


## 系统

```
uname -a               # 查看内核/操作系统/CPU信息
head -n 1 /etc/issue   # 查看操作系统版本
cat /proc/cpuinfo      # 查看CPU信息
hostname               # 查看计算机名
lspci -tv              # 列出所有PCI设备
lsusb -tv              # 列出所有USB设备
lsmod                  # 列出加载的内核模块
env                    # 查看环境变量
```

## 资源

```
ree -m                # 查看内存使用量和交换区使用量
df -h                  # 查看各分区使用情况
du -sh <目录名>        # 查看指定目录的大小
grep MemTotal /proc/meminfo   # 查看内存总量
grep MemFree /proc/meminfo    # 查看空闲内存量
uptime                 # 查看系统运行时间、用户数、负载
cat /proc/loadavg      # 查看系统负载
```

## 磁盘和分区

```
mount | column -t      # 查看挂接的分区状态
fdisk -l               # 查看所有分区
swapon -s              # 查看所有交换分区
hdparm -i /dev/hda     # 查看磁盘参数(仅适用于IDE设备)
dmesg | grep IDE       # 查看启动时IDE设备检测状况
```

## 网络

```
# ifconfig               # 查看所有网络接口的属性
# iptables -L            # 查看防火墙设置
# route -n               # 查看路由表
# netstat -lntp          # 查看所有监听端口
# netstat -antp          # 查看所有已经建立的连接
# netstat -s             # 查看网络统计信息
```

## 进程

```
# ps -ef                 # 查看所有进程
# top                    # 实时显示进程状态
```

## 用户
```
# w                      # 查看活动用户
# id <用户名>            # 查看指定用户信息
# last                   # 查看用户登录日志
# cut -d: -f1 /etc/passwd   # 查看系统所有用户
# cut -d: -f1 /etc/group    # 查看系统所有组
# crontab -l             # 查看当前用户的计划任务

```

## 服务

```
# chkconfig --list       # 列出所有系统服务
# chkconfig --list | grep on    # 列出所有启动的系统服务
```

## 程序

```
# rpm -qa                # 查看所有安装的软件包
```