# python解释器

## 解释器

Linux/Unix 的系统上，Python 解释器通常被安装在 /usr/local/python3 这样的有效路径（目录）里。

可以将路径 /usr/local/python3/bin 添加到您的 Linux/Unix 操作系统的环境变量中，这样您就可以通过 shell 终端输入下面的命令来启动 Python 。

```shell
$ PATH=$PATH:/user/local/python3/bin/python #设置环境变量
$ python3 --vesion
Python 3.7.6
```

在 Window 系统下你可以通过以下命令来设置 Python 的环境变量，假设你的 Python 安装在 C:\Python37 下:

```windows
set path=%path%;C:\python37
```

### 解释器的调用

- ​​#!/usr/bin/python​​ ：指定用什么解释器运行脚本以及解释器所在的位置，如果解释器没有装在/usr/bin/目录，改成其所在目录就行了，或者更通用的方法是：​#!/usr/bin/env python​。

```python
#!/usr/bin/python3
```

- 保存在XXX.py​ 文件中并使用python命令执行该脚本文件

```shell
python XXX.py
```
