# docker push

将本地的镜像上传到镜像仓库,要先登陆到镜像仓库。

```shell
docker push [OPTIONS] NAME[:TAG]
```

OPTIONS说明：

* --disable-content-trust :忽略镜像的校验,默认开启
