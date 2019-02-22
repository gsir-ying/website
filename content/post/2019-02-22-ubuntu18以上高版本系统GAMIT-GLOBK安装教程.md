---
title:      ubuntu18以上高版本系统GAMIT10.7安装教程
date:       2019-02-22
lastmod:    2019-02-22
draft:      false
tags:       ["GAMIT安装"]
categories: ["GAMIT-GLOBK"]
author:      GSir
---

> 高版本Linux系统由于gcc和g++编译器自带版本较高，与GAMIT编译所使用的版本不太兼容，因此ubuntu18或fedora27等高版本系统无法成功安装GAMIT10.7版本。本教程为解决gamit10.7安装过程中经常出现的问题。

<!--more-->

# 1 安装并选择低版本的gcc编译器

## gfortran gcc g++切换(安装gamit需要切换低版本)
```shell
sudo apt-get install gcc-5 gcc-5-multilib
sudo apt-get install g++-5 g++-5-multilib
sudo apt-get install gfortran-5 gfortran-5-multilib

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 50
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 50
sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-5 50
```
## 然后选择gcc和g++ gfortran
```shell
sudo update-alternatives --config gcc
sudo update-alternatives --config g++
sudo update-alternatives --config gfortran
```
# 2 安装make，ftp
```shell
sudo apt-get install make
sudo apt-get install ftp
```

# 3 安装运行组件
```shell
sudo apt-get install csh
sudo apt-get install tcsh
sudo apt-get install libx11-dev
```

# 4 将gamit的源代码复制到/opt目录下：首先先将gamit安装文件夹拷贝到linux系统的桌面上，之后将文件夹转移到/opt目录下。具体操作为：在终端输入
```shell
sudo mv ~/桌面/gamit10.70 /opt 
```
这样就将gamit安装包转移到opt目录下。

# 5 进入文件10.70，给install_software赋执行权限，
```shell
cd  /opt/10.70
chmod  +x ./install_software
```
# 6 运行安装脚本  
```shell
./install_software
```
在安装过程当中遇到所有的y/n问题，一律选择y

# 7 安装失败后，编辑保存opt/gamit10.70/libraries里的Makefile.config 文件

01 找到

```
# Generic (will work on any system if links in place)
X11LIBPATH /usr/lib/X11
X11INCPATH /usr/include/X11
```
将其修改为
```
# Generic (will work on any system if links in place)
X11LIBPATH /usr/lib/
X11INCPATH /usr/include/
```
02 找到
```
MAXSIT 80
MAXSAT 32
MAXATM 13
MAXEPC 2880
```
此处是对 GAMIT 程序解算参数的配置，建议修改为
```
MAXSIT 80
MAXSAT 32
MAXATM 25
MAXEPC 5760
```
更改以上内容之后，保存。重新执行：
```shell
./install_software
```
# 8 之后的一切询问输入 y，安装成功之后会看到提示。

# 9 配置运行路径
打开计算机home文件夹，CTRL+H快捷键显示隐藏文件，打开.bashrc，在文件最后加入下面两行并保存。
```
export PATH="$PATH:/opt/gamit10.70/gamit/bin:/opt/gamit10.70/com:/opt/gamit10.70/kf/bin"
export HELP_DIR=/opt/gamit10.70/help/
```
# 10 关闭终端，重新打开终端输入doy，测试GAMIT安装成功。

# 11 安装GMT，支持GAMIT的绘图功能。
```shell
sudo apt-get install gmt
```

> 提示，如果安装gmt或gcc等工具中提示错误，根据提示重新安装，如安装命令后加入"--fix-missing"。