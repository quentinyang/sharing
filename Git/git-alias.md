# Git小技巧

## Git自动补全
将[git-completion](git-completion.bash)保存到本地，比如更名放到`~/.git-completion.bash`。

然后在`~/.bash_profile`里面增加一行

```
source ~/.git-completion.bash
```

## Git里常用的快捷命令

原理其实也很简单，就是通过git的alias别名配置而来的。
你可以添加到git全局配置文件`~/.gitconfig`，将如下内容放进去即可：

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

然后使用的时候，可以直接
```
git st // 等同于 git status
git br // 等同于 git branch
git co -b xxx // 等同于 git checkout -b xxx
git lg // 会有一个漂亮的日志树
```
