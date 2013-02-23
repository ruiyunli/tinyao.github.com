---
layout: post
title: "书圈-客户端框架重构"
description: ""
category: bookcircle 
tags: [书圈, 重构]
---
{% include JB/setup %}

安卓客户端的代码，一直比较散，导致代码冗余挺严重的，还有整个组织结构比较乱。所以有必要细细整理下了。

先从功能实现上说，分为几大模块包：base，activity，util，task，view，data，database，adapter...

* base包
  
  基础类，比如baseActivity，还有Pref、Application类，用以提供一些全局量的access

* activity包

  窗口类，包括对话框

* util包

  工具类，包含数据解析、网络处理、文字图像处理等

* task包

  任务类，提供各个任务的统一管理，包括书籍上传、头像上传、私信收发、定时检测、资料修改、藏书获取、书友获取、登录注册等等。

* view包

  自定义view类，包括zxing、dialog、tableview、chatlist、imageView、refreshlist等

* data包

  对象类，包括User、book、collection等，其中包含对象的处理

* database包

  数据库类，包括User、book、collection、msg以及sharedpreferences类，与本地数据存取相关的类

* adapter包

  自定义Adapter类，用于维护数据的视图展示 

###关于Task任务

登录->初始化本地数据->获取探索、个人、私信等信息

添加书籍  修改资料  发送私信  定时检测消息

获取藏书  同校书籍  同校书友  书籍信息  书架管理

思路:

> 使用一个taskManager集中管理分配，定义不同的任务ID；
