---
title: "下载 raywenderlich.com 上的 iOS/Android/Unity 视频、源码"
categories: iOS
tags:
  - iOS
  - Android
  - Unity
comments: true
date: 2019-05-09 11:13:15
---

## raywenderlich 简介

<https://www.raywenderlich.com> 对于 iOS 开发人员来说一定不陌生，这可能是 iOS 初级教程里面被推荐最多的网站了吧。

其实它不仅有 iOS 的开发教程，后面还出了 android 和 Unity 的开发教程。

教程简明实用，有原理介绍还有代码实现，直接可以看到实现效果，非常推荐大家也能写成像它上面的教程。

## [raywenderlich 官文介绍](https://help.raywenderlich.com/contact/)

<!--more-->

* 90kDAILY PAGEVIEWS
* 2049ARTICLES
* 2921VIDEOS & SCREENCASTS
* 244TEAM MEMBERS

raywenderlich.com is a community site focused on creating high quality programming tutorials.

We pride ourselves on creating the highest-quality video courses, books, and written tutorials on the Internet.

Every tutorial on our site goes through three rounds of editing before publication, to make sure each tutorial works 100%, is technically accurate, and provides comprehensive coverage of the topic.

Thousands of developers and designers of all backgrounds, from all over the world, come to raywenderlich.com to teach and learn.

We pay our authors and editor for all of their work, using the highest rates in the industry.

Our goal is to create an environment where talented developers and teachers can make a living through their work, or advance their career by being recognized as an expert.

## 下载 raywenderlich 资源

5 月 2 日收到 Ray Wenderlich <ray@raywenderlich.com> 的订阅邮件。

![Ray Wenderlich <ray@raywenderlich.com>.png](https://upload-images.jianshu.io/upload_images/910914-05df3ac8c0696913.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

五一周末免费开放视频 3 天，太好了，为了以后也有时间观看，我决定把视频下载下来。

### youtube-dl

最先找到 <https://github.com/ytdl-org/youtube-dl>，这上面提供多种视频下载。

代码 clone 下来一运行，报错！登录不成功。

这个难不倒我，使用 [Chrome ](https://chrome.google.com) 开发者工具，找到 `Header` 里面有一个

```js
'Authorization': 'Token ..'
```

打开 [Postman](https://www.getpostman.com)，添加 `Authorization`。

![Authorization.png](https://upload-images.jianshu.io/upload_images/910914-0d080fa65cdd689d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

`Hersers` 界面如下：

![Headers.png](https://upload-images.jianshu.io/upload_images/910914-0f331666d7c1ab03.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

得到 `json` 文件:

```json
{
    "video": {
        "id": 246,
        "name": "PDF Printing",
        "description": "Create a PDF file. We’ll create a budget report that you could then share.",
        "author_notes": "",
        "duration": 589,
        "pretty_duration": "9 minutes 49 seconds",
        "featured": false,
        "episode": 6,
        "format": "course",
        "language": null,
        "platform": null,
        "editor": null,
        "meta_description": null,
        "released_at": "2016-05-13T16:00:00.000Z",
        "difficulty": "intermediate",
        "created_at": "2016-08-04T02:56:51.175Z",
        "updated_at": "2019-04-28T10:01:25.399Z",
        "free": true,
        "attachments": [
            {
                "id": 4605,
                "url": "https://files.betamax.raywenderlich.com/attachments/videos/246/CG-Int-MyList-06.png",
                "kind": "watchlist_artwork",
                "filename": "CG-Int-MyList-06.png",
                "retina": false
            },
            {
                "id": 4606,
                "url": "https://files.betamax.raywenderlich.com/attachments/videos/246/CG-Int-MyList-06%402x.png",
                "kind": "watchlist_artwork",
                "filename": "CG-Int-MyList-06@2x.png",
                "retina": true
            },
            {
                "id": 4607,
                "url": "https://files.betamax.raywenderlich.com/attachments/videos/246/CG-Int-VideoBanner-06.png",
                "kind": "video_banner",
                "filename": "CG-Int-VideoBanner-06.png",
                "retina": false
            },
            {
                "id": 4608,
                "url": "https://files.betamax.raywenderlich.com/attachments/videos/246/CG-Int-VideoBanner-06%402x.png",
                "kind": "video_banner",
                "filename": "CG-Int-VideoBanner-06@2x.png",
                "retina": true
            },
            {
                "id": 1736,
                "url": "https://files.betamax.raywenderlich.com/attachments/videos/246/005_IntCoreGraphics_PDF.zip",
                "kind": "materials",
                "filename": "005_IntCoreGraphics_PDF.zip",
                "retina": false
            }
        ],
        "authors": [
            {
                "id": 25,
                "role": "instructor",
                "user": {
                    "id": 9,
                    "external_id": "8f5ca72a-11f3-11e6-b121-2380095a6428",
                    "email": "caroline@archway.com.au",
                    "username": "Caroline",
                    "avatar_url": "https://www.gravatar.com/avatar/bfe2a965cd6136b9e2b485c959a57aff.jpg?d=https%3A%2F%2Fwolverine.raywenderlich.com%2Fv3-resources%2Fimages%2Fdefault-account-avatar_2x.png\u0026s=480",
                    "name": "Caroline Begbie"
                }
            }
        ],
        "clips": [
            {
                "id": 253,
                "provider_id": "164661205",
                "provider_url": "https://vimeo.com/164661205",
                "pretty_duration": "9m 49s",
                "clip_type": "primary_content",
                "attachments": [
                    {
                        "id": 5470,
                        "url": "https://files.betamax.raywenderlich.com/attachments/clips/253/164661205.vtt",
                        "kind": "subtitles",
                        "filename": "#164661205.vtt",
                        "retina": false
                    },
                    {
                        "id": 1735,
                        "url": "https://player.vimeo.com/external/164661205.m3u8?s=96740a5872b5272dc2e5b1a29af7b33a92e3739e\u0026oauth2_token_id=897711146",
                        "kind": "stream",
                        "filename": "#164661205",
                        "retina": false
                    },
                    {
                        "id": 24274,
                        "url": "https://player.vimeo.com/external/164661205.sd.mp4?s=dc9fad611715e5efa3e2544989877c3de083a2a5\u0026profile_id=165\u0026oauth2_token_id=897711146",
                        "kind": "sd_video_file",
                        "filename": "164661205.sd.mp4",
                        "retina": false
                    },
                    {
                        "id": 24275,
                        "url": "https://player.vimeo.com/external/164661205.hd.mp4?s=327799fd9b66832d7f7a53fa1a3d76cd8f9b902a\u0026profile_id=174\u0026oauth2_token_id=897711146",
                        "kind": "hd_video_file",
                        "filename": "164661205.hd.mp4",
                        "retina": false
                    }
                ]
            }
        ],
        "categories": [
            {
                "id": 27,
                "name": "carolus: Graphics \u0026 Animation"
            },
            {
                "id": 42,
                "name": "domain: ios"
            },
            {
                "id": 6,
                "name": "Graphics"
            }
        ]
    }
}
```

当然现在已经不行了。

```json
{
    "error": "video not available"
}
```

youtube-dl 是可以登录 raywenderlich，可是又报 `Vimeo` 登录错误。

叹！

另辟蹊径吧，我们来解析一下 `json` 文件吧。我发现

```son
{
    "video": {
        "name": "PDF Printing",
        "clips": [
            {
                "attachments": [
                    {
                        "id": 1735,
                        "url": "https://player.vimeo.com/external/164661205.m3u8?s=96740a5872b5272dc2e5b1a29af7b33a92e3739e\u0026oauth2_token_id=897711146",
                        "kind": "stream",
                        "filename": "#164661205",
                        "retina": false
                    }
                ]
            }
        ]
    }
}
```

找到 ` "kind": "stream"` 内容，使用 [FFmpeg](https://ffmpeg.org) 下载。

```sh
$ ffmpeg -i "https://player.vimeo.com/external/164661205.m3u8?s=96740a5872b5272dc2e5b1a29af7b33a92e3739e\u0026oauth2_token_id=897711146" "PDF Printing.mp4"
```

好的，可以下载。但是这个下载速度也实在是太慢了吧！

放我的服务器上面下载，结果 *FFmpeg* 报 `CPU` 错误，我...

我在 google 上面找啊找，找啊找，还是找不着解决方法。

实在不行，我多开几个终端慢慢下吧。

### 下载资源（PDF，源码）

通过解析上面的 `json` 文件，看到还有附件呢，正好前几天有人在 [B站](https://www.bilibili.com/video/av11086645) 问我要 [Ray Wenderlich Video Tutorial - Introducing Custom Controls](https://www.bilibili.com/video/av11086645) 的源码，我把源码也下载下来吧。

这个实现比较简单，直接放出源码。

```python
import requests
from bs4 import BeautifulSoup
import os

base_url = 'https://www.raywenderlich.com'

headers = {
                "Accept" : "application/json, text/javascript, */*; q=0.01",
                "Authorization" : "Bearer xxx",
                "Origin" : "https://www.raywenderlich.com",
                "Referer" : "https://www.raywenderlich.com/",
                "User-Agent" : "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36",
                "X-CSRF-Token" : "qnaS...",
                "X-Requested-With" : "XMLHttpRequest",
            }

def download(url):
    r = requests.get(url, headers=headers)

    result = raywenderlich_from_dict(r.json())
    name = result.video.name.replace('&', '').replace(':', '').replace('?', '')
    attachments = result.video.attachments

    _id = result.video.id
    _name = result.video.name.replace('&', '').replace(':', '').replace('?', '')

    for attachment in attachments:
        filename = attachment.filename
        url = attachment.url
        cmd = 'wget -O "%s. %s %s" %s' % (_id, _name, filename, url)
        os.system(cmd.encode('utf-8'))

if __name__ == '__main__':
    for i in range(2789):
        url = 'https://videos.raywenderlich.com/api/v1/videos/%s.json' % I
        print(url)
        try:
            download(url)
        except:
            print(i)
```

这样就可以下载所有附件了。

### 再战视频下载

第二天我又从服务器运行 `youtube-dl`，居然不报错了，太棒了，赶紧下载。

不过 `youtube-dl` 只能下  `youtube-dl` 里面的  **Video Course** 系列视频，而不能下载 **Screencast** 单个视频。原来 `_VALID_URL` 是不匹配，而且里面的内容也不一样。

是可忍，孰不可忍。

#### 直接动手改代码

```sh
$ git checkout -b raywenderlich_screencast
```

修改 `raywenderlich.md`：

```python
class RayWenderlichIE(InfoExtractor):
    _VALID_URL = r'''(?x)
                    https?://
                        (?:
                            videos\.raywenderlich\.com/courses|
                            (?:www\.)?raywenderlich\.com
                        )/
                        (?P<id>[^/]+)
```

实现内容比之前更简单了，直接从 *thumbnail* 中找到 *video_id* 就好了，不过 *thumbnail* 有时候是空的，好说，正则表达式大法伺候。

于是又安心的睡觉去了。

**嘀嘀嘀！原来是磁盘满了，再哭。**

好吧，我一咬牙，一跺脚，再买一个磁盘大点的服务器（就买一个月吧，实在是没钱了）。

慢慢下载去吧。

嘘。嘘。嘘。。。

第二天磁盘又满了，赶紧下载 [BaiduPCS-Go](https://github.com/iikira/BaiduPCS-Go)。

快点上传啊，我求求你了。结果没用，好的时候有好几 M 的速度，一会儿又只剩下几 k。

最后结果：共有 2K 多的视频，我下载了 1K 多的视频。

## 总结

1. 时间真的比金钱重要。
1. 提前做好准备。

关注我的公众号，AI开发日志(AIDevLog) / iOS开发日志(iOSDevLog)。

![image](http://upload-images.jianshu.io/upload_images/910914-77afad9313a85b1f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![image](http://upload-images.jianshu.io/upload_images/910914-50c529a9f8f56bda.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

有需要资源的可以联系我，直接共享容易封，我也在慢慢上传  [B站](https://www.bilibili.com/video/av11086645)。

**有条件的请去官网 <https://www.raywenderlich.com>  观看**