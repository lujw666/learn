# Hub

## Hub安装

```shell
# 在Debian/Ubuntu中安装
apt-get install hub

# 在Centos/RedHat中安装
yum install hub

# 在Mac下的安装
brew install hub
```

## Hub功能

命令 | 参数 | 填写内容 | 功能 | 等同
-- | -- | -- | -- | --
hub clone | | 仓库名or其他用户名/仓库名 | 获取Github远程仓库 | git clone git@github.com/用户名/仓库名.git
hub remote add | | 用户名 | 添加Github远程仓库 | git remote add 标识符 git://github.com/用户名/当前操作仓库的名称.git
hub fork | | 仓库名 | fork仓库 | =（在GitHub上对仓库做Fork处理）git remote add -f 用户名 git@github.com:仓库名.git
hub pull-request | -i Issue编号 -b 用户名:接收分支 -h 用户名:发送分支 | Github的pull-request推送
hub checkout | | URL | 在本地检查pull-request分支的运行状况
hub create | | 仓库名 | 在Github上创建库
hub push | | 标识符 分支 | 推送至Github远程仓库
hub browse | | | 打开当前操作的仓库在 GitHub 上对应的仓库页面
hub compare | | | 打开 GitHub 上对应的查看差别的页面
