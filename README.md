<font size=6>Learning Programming</font>

- [1. learn](#1-learn)
  - [1.1. 编程环境](#11-编程环境)
    - [1.1.1. dockerfile](#111-dockerfile)
    - [1.1.2. docker hub](#112-docker-hub)
    - [1.1.3. 镜像使用](#113-镜像使用)
  - [1.2. 学习规则](#12-学习规则)
- [2. python](#2-python)
  - [2.1. 学习笔记](#21-学习笔记)

# 1. learn

Learn programming, such as python、R、docker and sql

## 1.1. 编程环境

用于学习编程搭建了docker镜像。

### 1.1.1. dockerfile

用于docker镜像搭建的[dokerfile](Dockerfile)。

### 1.1.2. docker hub

可直接从docker hub上拉取镜像。

```docker
docker pull lujiawei/learn:lastest
```

### 1.1.3. 镜像使用

```docker
docker run -d --privileged \
-v /path:/data \
--name learn \ 
lujiawei/learn:lastest
```

## 1.2. 学习规则

# 2. python

## 2.1. 学习笔记

python学习笔记的[链接](python/README.md)。
