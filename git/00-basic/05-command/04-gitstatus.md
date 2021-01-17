# git status

git status 命令用于查看在你上次提交之后是否有对文件进行再次修改

```shell
$ git status
On branch master

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

    new file:   README
    new file:   hello.php
```

使用 -s 参数来获得简短的输出结果。

```shell
$ git status -s
AM README
A  hello.php
```
