# git rm

git rm 命令用于删除文件。

```shell
# 将文件从暂存区和工作区中删除
$ git rm <file>

# 如果删除之前修改过并且已经放到暂存区域的话，则必须要用强制删除选项 -f
$ git rm -f <file>

# 如果想把文件从暂存区域移除，但仍然希望保留在当前工作目录中，使用 --cached 选项即可
$ git rm --cached <file>
```
