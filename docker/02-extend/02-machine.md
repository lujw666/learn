# Docker Machine

Docker Machine 是一种可以让您在虚拟主机上安装 Docker 的工具，并可以使用 docker-machine 命令来管理主机。

使用 docker-machine 命令，您可以启动，检查，停止和重新启动托管主机，也可以升级 Docker 客户端和守护程序，以及配置 Docker 客户端与您的主机进行通信。

## 安装

安装 Docker Machine 之前你需要先安装 Docker。

Docker Machine 可以在多种平台上安装使用，包括 Linux 、MacOS 以及 windows。

### Linux 安装命令

```shell
$ base=https://github.com/docker/machine/releases/download/v0.16.0 &&
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
  sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&
  chmod +x /usr/local/bin/docker-machine
```

### macOS 安装命令

```shell
$ base=https://github.com/docker/machine/releases/download/v0.16.0 &&
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/usr/local/bin/docker-machine &&
  chmod +x /usr/local/bin/docker-machine
```

### Windows 安装命令

如果是 Windows 平台，可以使用 Git BASH，并输入以下命令：

```shell
$ base=https://github.com/docker/machine/releases/download/v0.16.0 &&
  mkdir -p "$HOME/bin" &&
  curl -L $base/docker-machine-Windows-x86_64.exe > "$HOME/bin/docker-machine.exe" &&
  chmod +x "$HOME/bin/docker-machine.exe"
```

## 使用

1、列出可用的机器

```shell
$ docker-machine ls
```

2、创建机器

创建一台名为 test 的机器。

```shell
$ docker-machine create --driver virtualbox test
```

* --driver：指定用来创建机器的驱动类型，这里是 virtualbox。

3、查看机器的 ip

```shell
$ docker-machine ip test
```

4、停止机器

```shell
$ docker-machine stop test
```

5、启动机器

```shell
$ docker-machine start test
```

6、进入机器

```shell
$ docker-machine ssh test
```

## docker-machine 命令参数说明

* active：查看当前激活状态的 Docker 主机。
* config：查看当前激活状态 Docker 主机的连接信息。
* creat：创建 Docker 主机
* env：显示连接到某个主机需要的环境变量
* inspect： 以 json 格式输出指定Docker的详细信息
* ip： 获取指定 Docker 主机的地址
* kill： 直接杀死指定的 Docker 主机
* ls： 列出所有的管理主机
* provision： 重新配置指定主机
* regenerate-certs： 为某个主机重新生成 TLS 信息
* restart： 重启指定的主机
* rm： 删除某台 Docker 主机，对应的虚拟机也会被删除
* ssh： 通过 SSH 连接到主机上，执行命令
* scp： 在 Docker 主机之间以及 Docker 主机和本地主机之间通过 scp 远程复制数据
* mount： 使用 SSHFS 从计算机装载或卸载目录
* start： 启动一个指定的 Docker 主机，如果对象是个虚拟机，该虚拟机将被启动
* status： 获取指定 Docker 主机的状态(包括：Running、Paused、Saved、Stopped、Stopping、Starting、Error)等
* stop： 停止一个指定的 Docker 主机
* upgrade： 将一个指定主机的 Docker 版本更新为最新
* url： 获取指定 Docker 主机的监听 URL
* version： 显示 Docker Machine 的版本或者主机 Docker 版本
* help： 显示帮助信息
