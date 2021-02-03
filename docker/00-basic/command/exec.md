# docker exec

在运行的容器中执行命令。

```shell
docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
```

OPTIONS说明：

* -d :分离模式: 在后台运行
* -i :即使没有附加也保持STDIN 打开
* -t :分配一个伪终端