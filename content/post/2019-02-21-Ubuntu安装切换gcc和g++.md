---
title:      ubuntu安装切换gcc和g++
date:       2019-02-21
lastmod:    2019-02-21
draft:      false
tags:       ["ubuntu"]
categories: ["系统人生"]
author:      GSir
---

> 不同版本gcc和g++安装和切换，高版本ubuntu系统安装gamit需要。

<!--more-->

# gfortran gcc g++切换(安装gamit需要切换低版本)
```shell
sudo apt-get install gcc-5 gcc-5-multilib
sudo apt-get install g++-5 g++-5-multilib
sudo apt-get install gcc-6 gcc-6-multilib
sudo apt-get install g++-6 g++-6-multilib
sudo apt-get install gcc-7 gcc-7-multilib
sudo apt-get install g++-7 g++-7-multilib

sudo apt-get install gfortran-5 gfortran-5-multilib
sudo apt-get install gfortran-6 gfortran-6-multilib
sudo apt-get install gfortran-7 gfortran-7-multilib

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 50
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 70
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 50
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 60
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 70

sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-5 50
sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-6 60
sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-7 70
```
# 然后选择gcc和g++ gfortran
```shell
sudo update-alternatives --config gcc
sudo update-alternatives --config g++
sudo update-alternatives --config gfortran
```