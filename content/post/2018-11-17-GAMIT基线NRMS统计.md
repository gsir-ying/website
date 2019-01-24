---
title:      GAMIT基线文件NRMS统计
date:       2018-11-17
lastmod:    2018-11-17
draft:      false
tags:       ["NRMS","GAMIT"]
categories: ["GAMIT-GLOBK"]
author:      GSir
---

> GAMIT解算的o文件包含浮点解和固定解的NRMS，利用python脚本提取所有o文件的NRMS，输出到文件nrms.txt，以便后续分析。

<!--more-->

## python代码

```python
#!/usr/bin/env python
# -*- coding: utf-8 -*-
#------------------------------------------------------------------------------
# function: extract nrms from ofile
# by:       Ren Yingying, Tongji Univerity
# email     gsir_ying@163.com
# date:     2018/11/14
#------------------------------------------------------------------------------
# usage:    reday ofile content includes ofiles
#           now run
#------------------------------------------------------------------------------
# ref:      
#------------------------------------------------------------------------------

import os

filelist = os.listdir('ofile')
count_file = 0
str_rms = ''
str_neu = ''
for file in filelist :
    count_file += 1
    file_object = open('ofile\\' + file)
    temp = 0
    for line in file_object.readlines():
            if (line.find('Postfit nrms:') > 0):
                    temp += 1
                    if(temp == 2):
                        str_rms += line           
    file_object.close()
file_object1 = open('nrms.txt','w')
file_object1.write(str_rms)
file_object1.close()

print(str_rms)

```

> 也可以单独统计固定解或浮点解。如果两种解的NRMS都需要统计，直接使用grep工具更为方便。
```
grep "Postfit nrms:" ofile/* > nrms.txt
```