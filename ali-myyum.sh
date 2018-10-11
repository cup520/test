#!/bin/bash

if [ ! -d "/etc/yum.repos.d/back" ];then
    mkdir /etc/yum.repos.d/back
fi

mv /etc/yum.repos.d/*.repo /etc/yum.repos.d/back

curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

yum repolist

