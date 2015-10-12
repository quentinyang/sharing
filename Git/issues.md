# Git使用相关问题



## Q: 没有commit, 没有stash，执行了git reset --hard之后所有修改全部清空，怎么找回修改？

如下操作之后test/目录丢失

```
mkdir test
vi test/app.js
git add test
git reset --hard
```

这种既没有git add又没有git commit的，一般很难找到的。但可以尝试使用[git fsck](https://git-scm.com/docs/git-fsck)来试试。

运行命令：

```
git fsck --full --no-reflogs
```

看到如下结果

```
missing tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904
dangling blob ef8a2fc78df31a63742cea406ed3c48fd9113e0c
```

```
git cat-file -p ef8a2fc78df31a63742cea406ed3c48fd9113e0c
```

能看到内容正是丢失的`app.js`, 通过下面命令恢复：

```
git cat-file -p ef8a2fc78df31a63742cea406ed3c48fd9113e0c > app.js
```