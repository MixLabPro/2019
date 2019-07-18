---
title: Android 反编译工具
categories: Android
tags:
  - Decompiler
comments: true
date: 2019-07-16 21:23:19
---

* **[Apktool](https://ibotpeaches.github.io/Apktool)** A tool for reverse engineering Android apk files / **Android apk 文件逆向工程工具**

```
apktool d ~/path/to/apk_to_decompile.apk
```

* **[dex2jar](https://github.com/pxb1988/dex2jar)** *Tools to work with android .dex and java .class files* /  **android .dex 和 java .class 文件的工具**

```
sh d2j-dex2jar.sh -f ~/path/to/apk_to_decompile.apk
```

* **[JD-GUI](http://java-decompiler.github.io/)** *A standalone Java Decompiler GUI* / **独立 Java 编译器 GUI**

```
java -jar jd-gui-x.y.z.jar
```

<!--more-->

## Apktool

[https://ibotpeaches.github.io/Apktool/install/](https://ibotpeaches.github.io/Apktool/install/)

### Quick Check

1.  Is at least Java 1.8 installed?
2.  Does executing `java -version` on command line / command prompt return 1.8 or greater?
3.  If not, please install Java 8+ and make it the default. (Java 7 will also work at this time)

### Installation for Apktool

* **Windows**:

1. Download Windows [wrapper script](https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/windows/apktool.bat) (Right click, Save Link As `apktool.bat`)
1. Download apktool-2 ([find newest here](https://bitbucket.org/iBotPeaches/apktool/downloads/)) Rename downloaded jar to `apktool.jar`
1. Move both files (`apktool.jar` & `apktool.bat`) to your Windows directory (Usually `C://Windows`)
1. If you do not have access to `C://Windows`, you may place the two files anywhere then add that directory to your Environment Variables System PATH variable.
1. Try running `apktool` via command prompt

* **Linux**:

1. Download Linux [wrapper script](https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool) (Right click, Save Link As `apktool`)
1. Download apktool-2 ([find newest here](https://bitbucket.org/iBotPeaches/apktool/downloads/))
1. Rename downloaded jar to `apktool.jar`
1. Move both files (`apktool.jar` & `apktool`) to `/usr/local/bin` (root needed)
1. Make sure both files are executable (`chmod +x`)
1. Try running `apktool` via cli

* **Mac OS X**:

1. Download Mac [wrapper script](https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/osx/apktool) (Right click, Save Link As `apktool`)
1. Download apktool-2 ([find newest here](https://bitbucket.org/iBotPeaches/apktool/downloads/))
1. Rename downloaded jar to `apktool.jar`
1. Move both files (`apktool.jar` & `apktool`) to `/usr/local/bin` (root needed)
1. Make sure both files are executable (`chmod +x`)
1. Try running `apktool` via cli

**Note** - Wrapper scripts are not needed, but helpful so you don’t have to type `java -jar apktool.jar` over and over.

```sh
apktool ~/path/to/apk_to_decompile.apk
```

## [dex2jar](https://github.com/pxb1988/dex2jar)

[https://github.com/pxb1988/dex2jar/releases](https://github.com/pxb1988/dex2jar/releases)

### Usage

```sh
sh d2j-dex2jar.sh -f ~/path/to/apk_to_decompile.apk
```

And the output file will be apk_to_decompile-dex2jar.jar.

## [JD-GUI](http://java-decompiler.github.io/)

```sh
java -jar jd-gui-x.y.z.jar
```

![image.png](https://upload-images.jianshu.io/upload_images/910914-ca8492dba2323c34.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

* [**jd-gui-1.6.2.jar**](https://github.com/java-decompiler/jd-gui/releases/download/v1.6.2/jd-gui-1.6.2.jar)

    Size : 2.89 MB

* [**jd-gui-1.6.2-min.jar**](https://github.com/java-decompiler/jd-gui/releases/download/v1.6.2/jd-gui-1.6.2-min.jar)

    Size : 1.33 MB

* [**jd-gui-1.6.2.rpm**](https://github.com/java-decompiler/jd-gui/releases/download/v1.6.2/jd-gui-1.6.2.rpm)

* [**jd-gui-1.6.2.deb**](https://github.com/java-decompiler/jd-gui/releases/download/v1.6.2/jd-gui-1.6.2.deb)

    Size : 1.20 MB

* [**jd-gui-osx-1.6.2.tar**](https://github.com/java-decompiler/jd-gui/releases/download/v1.6.2/jd-gui-osx-1.6.2.tar)

    Size : 1.44 MB

* [**jd-gui-windows-1.6.2.zip**](https://github.com/java-decompiler/jd-gui/releases/download/v1.6.2/jd-gui-windows-1.6.2.zip)
