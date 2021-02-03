# docker prune

删除所有未被 tag 标记和未被容器使用的镜像：

```shell
docker image prune
```

删除所有未被容器使用的镜像：

```shell
docker image prune -a
```

删除所有停止运行的容器：

```shell
docker container prune
```

删除所有未被挂载的卷：

```shell
docker volume prune
```

删除所有网络：

```shell
docker network prune
```

删除docker所有资源：

```shell
docker system prune
```
