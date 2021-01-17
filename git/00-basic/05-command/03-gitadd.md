# git add

git add 命令可将该文件添加到暂存区。

```shell
# 添加一个或多个文件到暂存区
git add [file1] [file2] ...

# 添加指定目录到暂存区，包括子目录
git add [dir]

# 添加当前目录下的所有文件到暂存区
git add 
```

实例

```shell
$ touch README                # 创建文件
$ touch hello.php             # 创建文件
$ ls
README        hello.php
# git status 命令用于查看项目的当前状态
$ git status -s
?? README
?? hello.php

# 执行 git add 命令来添加文件
$ git add README hello.php 
# 再执行 git status，可以看到这两个文件已经加上去了
$ git status -s
A  README
A  hello.php

# 修改 README 文件
$ vim README
# 在 README 添加以下内容，然后保存退出。
# 执行一下 git status，AM 状态的意思是这个文件在我们将它添加到缓存之后又有改动
$ git status -s
AM README
A  hello.php
```
