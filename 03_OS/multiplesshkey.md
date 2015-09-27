# 多个Github账号的SSH key解决办法

## Step 1: 生成SSH key

```
ssh-keygen -t rsa -C 'quentinyang1985@gmail.com'
ssh-add ～/.ssh/id_rsa_quentin
```

## Step 2: 创建或编辑~/.ssh/config文件

```
Host quentin
    HostName github.com
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/id_rsa_quentin
```

## Step 3: 使用刚刚创建的Host重新设置git仓库。

举例：

原来的仓库是：`git@github.com:quentinyang/resources.git`

替换之后应该是：`quentin:quentinyang/resources.git`。

换句话说，就是用虚拟Host名(如上：`quentin`)替换`git@github.com`

```
git remote set-url origin quentin:quentinyang/resources.git
```

## 参考

[多个github帐号的ssh keys支持](http://www.ooso.net/archives/644)