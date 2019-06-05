---
title: '《统计学习方法》slmethod GitHub 模板'
categories: 统计学习方法
tags:
  - ML
comments: true
date: 2019-06-03 23:58:46
---

GitHub 地址：[https://github.com/iOSDevLog/slmethod](https://github.com/iOSDevLog/slmethod)

![ISSUE_TEMPLATE](https://upload-images.jianshu.io/upload_images/910914-f246b1e9c8d9dee9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

<!--more-->

## 关于问题和拉取请求模板

使用问题和拉取请求模板，您可以自定义和标准化您希望贡献者在打开问题和在存储库中提取请求时包含的信息。

在存储库中创建问题并提取请求模板后，贡献者可以根据存储库的贡献指南使用模板打开问题或描述其提取请求中的建议更改。有关向存储库添加贡献指南的更多信息，请参阅“ [为存储库贡献者设置指南](https://help.github.com/en/articles/setting-guidelines-for-repository-contributors) ”。

您可以为组织创建默认问题并提取请求模板。有关详细信息，请参阅“ [为组织创建默认社区运行状况文件](https://help.github.com/en/articles/creating-a-default-community-health-file-for-your-organization) ”。

### 问题模板

使用问题模板构建器为存储库创建问题模板时，它们可供贡献者在存储库中打开新问题时使用。

使用模板构建器，您可以为每个模板指定标题和描述，添加模板内容，并将模板提交到默认分支或在存储库中打开pull请求。模板构建器会自动添加模板在新问题页面上显示所需的YAML前端事项标记。有关更多信息，请参阅“ [为存储库创建问题模板](https://help.github.com/en/articles/creating-issue-templates-for-your-repository) ”。

问题模板存储在存储库的默认分支中，位于隐藏`.github/ISSUE_TEMPLATE`目录中。如果您在另一个分支中创建模板，则协作者无法使用该模板。问题模板文件名不区分大小写，并且需要*.md*扩展名。要包含在社区配置文件清单中，问题模板必须位于`.github/ISSUE_TEMPLATE`文件夹中，并包含有效`name:`和`about:`。

![Bug_report](https://upload-images.jianshu.io/upload_images/910914-08c5a0081f6d3bee.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![Bug_report_preview](https://upload-images.jianshu.io/upload_images/910914-5097789492864835.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 创建问题模板

```sh
mkdir -p .github/ISSUE_TEMPLATE # 在 .github 中创建模板
vim .github/ISSUE_TEMPLATE/Bug_report.md
```

## 创建 PR 模板

...

## 参考：

* [Creating a default community health file for your organization](https://help.github.com/en/articles/creating-a-default-community-health-file-for-your-organization)
* [About issue and pull request templates](https://help.github.com/en/articles/about-issue-and-pull-request-templates)
