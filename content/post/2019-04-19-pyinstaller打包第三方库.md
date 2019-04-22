---
title:      pyinstaller打包第三方库
date:       2019-04-19
lastmod:    2019-04-19
draft:      false
tags:       ["python","打包"]
categories: ["程序人生"]
author:      GSir
---

> 之前在学习过程在使用pyinstaller进行程序打包时，第三方库无法自动搜索打包进去。搁置了一段时间，现在又遇到同样的问题而且是必须解决不可。通过搜索，测试，记录一下pyinstaller打包第三方库的方法。

<!--more-->

# 安装PyInstaller

```shell
pip install PyInstaller
```
# 使用Pyinstaller

## 帮助信息
```
usage: pyinstaller [-h] [-v] [-D] [-F] [--specpath DIR] [-n NAME]
                   [--add-data <SRC;DEST or SRC:DEST>]
                   [--add-binary <SRC;DEST or SRC:DEST>] [-p DIR]
                   [--hidden-import MODULENAME]
                   [--additional-hooks-dir HOOKSPATH]
                   [--runtime-hook RUNTIME_HOOKS] [--exclude-module EXCLUDES]
                   [--key KEY] [-d [{all,imports,bootloader,noarchive}]] [-s]
                   [--noupx] [-c] [-w]
                   [-i <FILE.ico or FILE.exe,ID or FILE.icns>]
                   [--version-file FILE] [-m <FILE or XML>] [-r RESOURCE]
                   [--uac-admin] [--uac-uiaccess] [--win-private-assemblies]
                   [--win-no-prefer-redirects]
                   [--osx-bundle-identifier BUNDLE_IDENTIFIER]
                   [--runtime-tmpdir PATH] [--bootloader-ignore-signals]
                   [--distpath DIR] [--workpath WORKPATH] [-y]
                   [--upx-dir UPX_DIR] [-a] [--clean] [--log-level LEVEL]
                   scriptname [scriptname ...]
```

## 常用命令

```shell
pyinstaller  myfile.py
```
## 3、输入参数的含义

-F 表示生成单个可执行文件

-w 表示去掉控制台窗口，这在GUI界面时有用。

-p 表示你自己自定义需要加载的类路径，一般情况下用不到

-i 表示可执行文件的图标

# 打包第三方库

在打包之前找到第三方库的包，把包复制到到跟test.py同目录下，然后再打包，否则会打包失败或者即使打包成功，程序也会报错：寻找不到第三方库的模块。


使用everything工具搜索找到第三方库的包，如使用了requests，然后把它复制到myfile.py同目录下，打包即可。