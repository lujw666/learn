# git commit

git commit 命令将暂存区内容添加到本地仓库中。

```shell
# 提交暂存区到本地仓库中
$ git commit -m [message] # [message] 是备注信息

# 提交暂存区的指定文件到仓库区
$ git commit [file1] [file2] ... -m [message]

# -a 参数设置修改文件后不需要执行 git add 命令，直接来提交
$ git commit -a
```
