# 新机环境配置
## 安装Brew

```
// 安装brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

详细可以访问[Brew官网](https://brew.sh/index.html)查看详情。[查看brew@github说明](https://github.com/Homebrew/brew/blob/master/docs/README.md#readme)

## 安装nodejs

从[官网(nodejs.org)](https://nodejs.org/en/)安装nodejs LTS版本。当前我本地安装了，`nodejs` `v6.9.5` & `npm` `v3.10.10`。

## Git配置

### 配置用户名和邮箱
```
git config --global user.name "Your Name"
git config --global user.email you@example.com
```

### [配置git自动补全](https://git-scm.com/book/zh/v1/Git-%E5%9F%BA%E7%A1%80-%E6%8A%80%E5%B7%A7%E5%92%8C%E7%AA%8D%E9%97%A8#自动补全)

去[git](https://github.com/git/git)源码的`contrib/completion`目录找到[git-completion.bash](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash)文件，然后放到`~/.git-completion.bash`文件里，再在`~/.bash_profile`文件里添加`source ~/.git-completion.bash`。最后，执行下`source ~/.bash_profile`即可。

### 配置git命令别名

把如下配置信息写入`~/.gitconfig`文件即可，

```
[alias]
   br = branch
   ci = commit
   co = checkout
   lg = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr %ci) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
   rd = reset --hard
   st = status

[push]
    default = current
[user]
    name = 坤霆
    email = wenjin.ywj@alibaba-inc.com
```

### 配置系统别名

配置系统命令别名，一般Mac下写入`~/.bash_profile`文件里，内容如下：

```
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
```

再执行`source ~/.bash_profile`让当前终端生效。

## 安装Java

从官网下载并安装[JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)。

## 编辑器

### [Sublime官网](https://www.sublimetext.com/)

官网下载dmg文件，然后安装即可。这里提供[Sublime Text3 注册码](https://fatesinger.com/77763)网站，亲测有效。

### [Webstorm官网](https://www.jetbrains.com/webstorm/)


## 配置
