# Github托管

GitBook.com 为每本书籍都创建了一个 Git 项目，并且使用这个 Git 项目来管理书籍源码。

## 连接你的账号/权限

在集成你的书本和GitHub前，你需要授予GitBook访问你的GitHub账号的权限。

在你的 账号设置 里，使用正确的权限连接你的GitHub账号：

* 默认的权限：仅仅在登陆的时候访问你的GitHub账号来验证你
* 访问webhook：访问你的GitHub账号来在指定的仓库中创建webhook（查看[webhooks](/gitbook/00-basic/04-github.md##Webhooks)）
* 访问公开的仓库：从网页编辑器中访问你的GitHub仓库，你可以很容易的在GitBook中编辑你的书本（仅仅公共仓库）
* 访问私有的仓库：和上面一项目一样，但是只能访问私有仓库

## 从GitHub导入书

创建一本新书的时候，GitHub 标签页让你选择一个 GitHub 仓库导入。

新创建的书会使用你仓库的内容，webhook 也会自动添加。

## Webhooks

当你的GitHub的仓库改变时，Webhooks会通知GitBook。

如果你的GitHub仓库改变时，GitBook没有收到通知，这个问题的主要原因是webhook。你可以检查仓库设置中webhook的状态。
