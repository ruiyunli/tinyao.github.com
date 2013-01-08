---
author: tinyao
title: >
  【翻译】Android 4.0+ 设计之Pure
  Android
excerpt:
layout: post
category:
  - Android
tags:
  - android
  - design
  - holo
post_format: [ ]
---
很多开发者想在多个平台上发布他们的应用。当你规划你的Android应用时，请注意不同的平台有着不同的展现规则和交互方式。在某一个平台上的完美设计，当被放到另一个平台环境下，会有错位的感觉。虽然‘设计一次，到处适用’的方法可能为你节省很多时间，但你确实也因为构建不符合规则的应用冒着一定的风险。考虑下面的向导来避免可能的陷阱。

1\. **不要模仿其他平台的UI元素**

各个平台都相应地提供一个设计精细的UI元素集合，表现出不同的主题风格。例如，一些平台的按钮是圆角的，有的平台的标题栏是有梯度的。很多时候，UI元素可能相同的目的，但是被设计得外表不同。

当你为Android构建应用的时候，不要使用或模仿其他平台风格的UI元素。Android最重要的UI元素是系统相似的默认主题。如果你想定制自己的UI风格，那么根据自己的品牌仔细设计好，不建议采用其他平台的交互方式。

![][2]

2\. **不要使用底部选项卡**

iOS等平台使用底部选项卡在不同的页面之间切换，Android的页面切换选项卡被放在顶部的Action Bar上。Android应用可能会将底部栏用于显示动态的操作选项，比如Gmail的底部栏。

你应该遵守这些建议来设计出与其他应用相匹配的体验，避免将Android上的Action与view switch混淆。更多action bar的设计惯例，参考Action Bars。

![][4]

3\. **不要将指向其他应用的链接在代码里写死**

有些时候，你可能需要使用其他应用的特征集。比如说，你想将你的应用里的内容分享到社交或短信应用，或者你想使用浏览器打开应用里的一个网页链接。不要使用硬编码，将链接指向特定的应用来实现这些功能。而是使用Android的intent接口来启动一个Activity的选择框，它将列出所有能够响应这个特定请求的应用程序。这使得用户能够选择他们更加偏好的应用来完成任务。特别的在分享这个功能上，考虑下在你的action bar里使用Share Action Provider来使用户更快地使用最近的分享目标。

![][6]

4\. **不要在action bar上使用带标签的返回按钮**

其他平台使用明确的带标签的返回按钮来回到上一层界面。Android使用action bar中的应用图标来回退界面。

![][8] 

5\. **不要在列表条目中使用右向箭头符号**

有一种普遍的模式是在列表条目的右边显示一个箭头，来提示用户可以点击进入更深一层。

Android不使用这种提示方式。避免使用iOS的这种风格来保持与系统的一致性，同时避免让用户猜想那些标志的意义。

![][10]

 [2]: http://i.imgur.com/Z1dAb.png
 [4]: http://i.imgur.com/16iNv.png
 [6]: http://i.imgur.com/pGD82.png
 [8]: http://i.imgur.com/M0K54.png
 [10]: http://i.imgur.com/cxoZc.png