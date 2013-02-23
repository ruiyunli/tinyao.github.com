---
layout: post
title: "NVIDIA CUDA Toolkit v5.0 Release Notes"
description: ""
category: cuda
tags: [cuda, nvidia]
---

##历史版本

* 10/2012 Version 5.0
* 08/2012 Version 5.0 RC
* 05/2012 Version 5.0 EA/Preview
* 04/2012 Version 4.2
* 01/2012 Version 4.1 Production
* 11/2011 Version 4.1 RC2
* 10/2011 Version 4.1 RC1
* 09/2011 Version 4.1 EA (Information in ReadMe.txt)
* 05/2011 Version 4.0
* 04/2011 Version 4.0 RC2 (Errata)
* 02/2011 Version 4.0 RC
* 11/2010 Version 3.2
* 10/2010 Version 3.2 RC2
* 09/2010 Version 3.2 RC

##Errata

###Known Issues

####General CUDA

####CUDA Libraries

####CUDA Tools

##Release Highlights

##Documentation

##List of Important Files

###Core Files

###Windows lib Files

###Linux lib Files

###Mac OS X lib Files

##Supported NVIDIA Hardware

See [http://www.nvidia.com/object/cuda_gpus.html](http://www.nvidia.com/object/cuda_gpus.html)

##Supported Operating System

* Windows

  Supported Windows Operatng Systems(32-bit and 64-bit)

  Supported Windows Compilers(32-bit and 64-bit)

* Linux

* Mac OS X

##Installation Notes

###Windows

For silent Installation:

* 安装:在命令行中使用`msiexec.exe`, 传入下面的参数

  `msiexec.exe /i <cuda_toolkit_filename>.msi /qn`

* 卸载:将`/i`替换成`/x`

###Linux

* 为了运行CUDA程序，CUDA模块必须被加载在`/dev`。这可以通过初始化X windows来实现，或者写一个脚本来加载内核模块并创建entries，下面是一个示例脚本(在开机时运行)：

<pre class="prettyprint linenums">
#!/bin/bash

/sbin/modprobe nvidia

if [ "$?" -eq 0 ]; then

    # Count the number of NVIDIA controllers found.
    N3D=`/sbin/lspci | grep -i NVIDIA | grep "3D controller" | wc -l`
    NVGA=`/sbin/lspci | grep -i NVIDIA | grep "VGA compatible controller" \
                      | wc -l`
    
    N=`expr $N3D + $NVGA - 1`
    for i in `seq 0 $N`; do
        mknod -m 666 /dev/nvidia$i c 195 $i;
    done

    mknod -m 666 /dev/nvidiactl c 195 255

else
    exit 1
fi
</pre>

* 在有些Linux发行版中，由于在处理存储上限的一个GRUB bug以及默认的`vmalloc`在32位系统上太小，可能有必要传递些信息到bootloader中:

  `vmalloc=256MB, uppermem=524288`

  下面是一个GRUB配置示例：

  <pre class="prettyprint linenums">
  title Red Hat Desktop (2.6.9-42.ELsmp)
  root (hd0,0)
  uppermem 524288
  kernel /vmlinuz-2.6.9-42.ELsmp ro root=LABEL=/1 rhgb quiet vmalloc=256MB
  pci=nommconf
  initrd /initrd-2.6.9-42.ELsmp.img
  </pre>

##新特性


待译....



{% include JB/setup %}
