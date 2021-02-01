# docker commit

从容器创建一个新的镜像。

```shell
docker commit [OPTIONS] CONTAINER [REPOSITORY[:TAG]]
```

OPTIONS说明：

* -a :提交的镜像作者；
* -c :使用Dockerfile指令来创建镜像；
* -m :提交时的说明文字；
* -p :在commit时，将容器暂停。
