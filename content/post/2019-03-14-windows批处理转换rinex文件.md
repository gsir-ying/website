---
title:      windows批处理转换rinex文件
date:       2019-03-14
lastmod:    2019-03-14
draft:      true
tags:       ["草稿"]
categories: ["临时草稿"]
author:      GSir
---

> 临时脚本

# windows d转o
for %i in (*.*d) do crx2rnx.exe %i

#linux 大写转小写
for file in `ls *o` ; do mv  $file `echo $file |  tr 'A-Z' 'a-z'`;done

# awk printf 搭配格式化输出
awk '{printf ("%-12s\n",$1)}'