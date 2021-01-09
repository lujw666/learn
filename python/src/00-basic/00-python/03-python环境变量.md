# python环境变量

程序和可执行文件可以在许多目录，而这些路径很可能不在操作系统提供可执行文件的搜索路径中。

path(路径)存储在环境变量中，这是由操作系统维护的一个命名的字符串。这些变量包含可用的命令行解释器和其他程序的信息。

Unix 或 Windows 中路径变量为 PATH（UNIX 区分大小写，Windows 不区分大小写）。在 Mac OS 中，安装程序过程中改变了 Python 的安装路径。如果你需要在其他目录引用Python，你必须在 path 中添加 Python 目录。

## Unix/Linux 设置环境变量

在 csh shell: 输入

```shell
setenv PATH "$PATH:/usr/local/bin/python"
```

在 bash shell (Linux): 输入

```shell
export PATH="$PATH:/usr/local/bin/python"
```

在 sh 或者 ksh shell: 输入

```shell
PATH="$PATH:/usr/local/bin/python" 
```

**注意: /usr/local/bin/python 是 Python 的安装目录。**

## Windows 设置环境变量

在环境变量中添加 Python 目录：

```windows
path=%path%;C:\Python 
```

**注意: C:\Python 是 Python 的安装目录。**

也可以通过以下方式设置：

1. 右键点击"计算机"，然后点击"属性"
2. 然后点击"高级系统设置"
3. 选择"系统变量"窗口下面的"Path",双击即可！
4. 然后在"Path"行，添加 Python 安装路径即可(我的 D:\Python32)，所以在后面，添加该路径即可。 ps：记住，路径直接用分号"；"隔开！
5. 最后设置成功以后，在 cmd 命令行，输入命令"python"，就可以有相关显示。

### Python环境变量

| 变量名 | 描述 |
| --- | --- |
| PYTHONPATH | PYTHONPATH是Python搜索路径，默认import的模块都会从PYTHONPATH里面寻找。 |
| PYTHONSTARTUP | Python启动后，先寻找PYTHONSTARTUP环境变量，然后执行此文件中变量指定的执行代码。 |
| PYTHONCASEOK | 加入PYTHONCASEOK的环境变量, 就会使Python导入模块的时候不区分大小写。 |
| PYTHONHOME | 另一种模块搜索路径。它通常内嵌于的PYTHONSTARTUP或PYTHONPATH目录中，使得两个模块库更容易切换。 |

[返回](../README.md)
