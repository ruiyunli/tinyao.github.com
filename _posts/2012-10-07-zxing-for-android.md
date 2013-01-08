---
author: tinyao
title: 修改ZXing for Android为竖屏模式
excerpt:
layout: post
category:
  - Android
tags:
  - Android
  - portrait
  - zxing
post_format: [ ]
---
这里针对ZXing 1.6版本，直接上方法

1、修改manifest文件，将CaptureActivity设为`portrait`

{% highlight xml %}
android:screenOrientation="portrait"
{% endhighlight %%}

2、在DecodeHandler.java文件中，找到decode(byte[],int,int)方法，在buildLuminanceSource调用前，加上如下：

{% highlight java %}
byte[] rotatedData = new byte[data.length];
for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++)
    rotatedData[x * height + height - y - 1] = data[x + y * width];
}
int tmp = width; // Here we are swapping, that's the difference to #11
width = height;
height = tmp;

data = rotatedData;
{% endhighlight %}

3、在CameraManager.java中找到getFramingRectInPreview()方法， 替换相应代码：

<pre class="prettyprint linenums lang-java">
rect.left = rect.left * cameraResolution.y / screenResolution.x;
rect.right = rect.right * cameraResolution.y / screenResolution.x;
rect.top = rect.top * cameraResolution.x / screenResolution.y;
rect.bottom = rect.bottom * cameraResolution.x / screenResolution.y;
</pre>

4、在CameraConfigurationManager.java里找到setDesiredCameraParameters()方法，加入代码

{% highlight java %}
camera.setDisplayOrientation(90);
{% endhighlight %}
