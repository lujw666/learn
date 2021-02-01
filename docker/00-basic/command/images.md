# docker images

列出本地镜像。

```shell
docker images [OPTIONS] [REPOSITORY[:TAG]]
```

OPTIONS说明：

* -a :列出本地所有的镜像（含中间映像层，默认情况下，过滤掉中间映像层）；
* --digests :显示镜像的摘要信息；
* -f :显示满足条件的镜像；
* --format :指定返回值的模板文件；
* --no-trunc :显示完整的镜像信息；
* -q :只显示镜像ID。
