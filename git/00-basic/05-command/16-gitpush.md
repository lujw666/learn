# git push

git push 命令用于从将本地的分支版本上传到远程并合并。

```shell
# git push 命令格式
$ git push <远程主机名> <本地分支名>:<远程分支名>

# 如果本地分支名与远程分支名相同，则可以省略冒号：
$ git push <远程主机名> <本地分支名>

# 如果本地版本与远程版本有差异，但又要强制推送可以使用 --force 参数
$ git push --force <远程主机名> <本地分支名>

# 删除远程分支可以使用 --delete 参数
git push --delete  <远程主机名> <本地分支名>
```
