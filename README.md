# 1. 学习内容

学习python、R、docker and sql的总结。希望大家协同打造一个编程学习笔记。

## 1.1. 本学习内容存放位置

Github:<https://github.com/lujw666/learn.git>

Gitbook:<https://lujw666.gitbook.io/learn/>

Blog:<https://lujw666.github.io/>

Dockerhub:<https://hub.docker.com/repository/docker/lujiawei/learn>

## 1.2. 搭建编程环境

用于学习编程搭建了docker镜像。

### 1.2.1. dockerfile

用于docker镜像搭建的[dokerfile](run/Dockerfile)。

### 1.2.2. docker hub

可直接从docker hub上拉取镜像。

```docker
docker pull lujiawei/learn
```

### 1.2.3. 镜像使用

```docker
docker run -d --privileged \
-v /path:/data \
--name learn \ 
lujiawei/learn
```

# 2. 学习链接

## 2.1. [Python](/python/README.md)

## 2.2. [SQL](/SQL/README.md)

## 2.3. [Docker](/docker/README.md)

## 2.4. [Markdown](/markdown/README.md)

## 2.5. [Git](/git/README.md)

## 2.6. [GitBook](/gitbook/README.md)
