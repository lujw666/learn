# git pull

git pull 命令用于从远程获取代码并合并本地的版本。

git pull 其实就是 git fetch 和 git merge FETCH_HEAD 的简写。

```shell
# git pull 命令格式
$ git pull <远程主机名> <远程分支名>:<本地分支名>

# 更新操作
$ git pull
$ git pull origin

# 将远程主机 origin 的 master 分支拉取过来，与本地的 brantest 分支合并
git pull origin master:brantest

# 远程分支是与当前分支合并，则冒号后面的部分可以省略
git pull origin master
```
