# git diff

git diff 命令比较文件的不同，即比较文件在暂存区和工作区的差异。

```shell
# 显示暂存区和工作区的差异
$ git diff [file]

# 显示暂存区和上一次提交(commit)的差异:
$ git diff --cached [file]
或
$ git diff --staged [file]

# 显示两次提交之间的差异:
$ git diff [first-branch]...[second-branch]

# 查看已缓存的与未缓存的所有改动
$ git diff HEAD

# 显示摘要而非整个 diff
$ git diff --stat
```
