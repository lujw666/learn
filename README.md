# 1. 学习内容

学习python、R、docker and sql

## 1.1. 编程环境

用于学习编程搭建了docker镜像。

### 1.1.1. dockerfile

用于docker镜像搭建的[dokerfile](run/Dockerfile)。

### 1.1.2. docker hub

可直接从docker hub上拉取镜像。

```docker
docker pull lujiawei/learn
```

### 1.1.3. 镜像使用

```docker
docker run -d --privileged \
-v /path:/data \
--name learn \ 
lujiawei/learn
```

# 2. 学习链接

## 2.1. [python](python/README.md)
