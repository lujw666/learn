# git log

git log 命令用于查看历史提交记录。

```shell
# 列出历史提交记录
$ git log

# 用 --oneline 选项来查看历史记录的简洁的版本
$ git log --oneline

# 用 --graph 选项，查看历史中什么时候出现了分支、合并
$ git log --graph

# 用 --reverse 参数来逆向显示所有日志
$ git log --reverse

# 用 --author 查找指定用户的提交日志
$ git log --author=author

# 用-since 和 --before，但是也可以用 --until 和 --after 指定日期
$ git log  --before={3.weeks.ago} --after={2010-04-18}

# 用了 --no-merges 选项以隐藏合并提交
```
