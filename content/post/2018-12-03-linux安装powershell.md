---
title:      Linux安装powershell
date:       2018-12-03
lastmod:    2018-12-03
draft:      false
tags:       ["powershell"]
categories: ["程序人生"]
author:      GSir
---

> 介绍如何在ubuntu系统安装使用powershell core

# 安装

## 网址

github地址 https://github.com/PowerShell/PowerShell

## ubuntu18.04安装

```
# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Update the list of products
sudo apt-get update

# Install PowerShell
sudo apt-get install -y powershell

# Start PowerShell
pwsh
```
## ubuntu16.04安装

```
# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Update the list of products
sudo apt-get update

# Install PowerShell
sudo apt-get install -y powershell

# Start PowerShell
pwsh
```

## Fedora安装

```
# Register the Microsoft signature key
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

# Register the Microsoft RedHat repository
curl https://packages.microsoft.com/config/rhel/7/prod.repo | sudo tee /etc/yum.repos.d/microsoft.repo

# Update the list of products
sudo dnf update

# Install a system component
sudo dnf install compat-openssl10

# Install PowerShell
sudo dnf install -y powershell

# Start PowerShell
pwsh
```

## 其他系统安装

参考网址 https://docs.microsoft.com/zh-cn/powershell/scripting/setup/installing-powershell-core-on-linux?view=powershell-6

## 测试使用

linux下可使用vscode编辑调试powershell脚本。
