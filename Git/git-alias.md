# Git里常用的快捷命令

原理其实也很简单，就是通过git的alias别名配置而来的。
你只要创建个git全局配置文件`~/.gitconfig`，内容如下：

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
```