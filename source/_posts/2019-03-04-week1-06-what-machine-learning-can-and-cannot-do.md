---
title: "week1-6 What machine learning can and cannot do 机器学习能做什么，不能做什么"
categories: "AI For Everyone"
tags:
  - AI
  - DL
  - ML
comments: true
date: 2019-03-04 11:26:59
---

![1-6-0.png](https://upload-images.jianshu.io/upload_images/910914-feca7953fa62683e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

在这个视频和下一个视频中，我希望能帮助你发展关于AI能做什么和不能做什么的直觉。

在实践中，在我投入特定的AI项目之前，我通常会让自己或工程师对项目进行技术调查，以确保它是可行的。

这意味着：查看数据，查看输入，输出A和B，并且只考虑这是否是真正可以做的事情。

<!--more-->

![1-6-1.png](https://upload-images.jianshu.io/upload_images/910914-cc349048cfb5baee.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![1-6-2.png](https://upload-images.jianshu.io/upload_images/910914-7866c46e44d2c60f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![1-6-3.png](https://upload-images.jianshu.io/upload_images/910914-2d040093c66790c2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![1-6-4.png](https://upload-images.jianshu.io/upload_images/910914-219794e3b6114a34.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

不幸的是，我看到一些CEO可能会对人工智能的期望过高，并且可以要求工程师做一些今天人工智能根本无法做到的事情。

媒体以及学术文献的挑战之一往往只是报告使用AI的成功故事的积极结果，我们看到一系列成功故事而不是故障故事，人们有时候会认为艾可以做任何事情。

不幸的是，这不是真的。

所以，我想在这个和下一个视频中做的是向你展示当今人工智能技术可以做什么，以及它不能做什么的几个例子，我希望这会帮助你，磨练你的直觉，看看可能更多或者为您的公司选择不太有希望的项目。

以前，您从垃圾邮件过滤到语音识别，机器翻译等中看到了此AI应用程序列表。

一个不完美的规则可以用来决定监督学习可能会或者可能不会做的是，几乎任何你可以做的事情，我们现在或许很快就可以使用这种输入输出映射自动使用监督学习。

因此，举例来说，为了确定其他汽车的位置，这是你用不到一秒的时间。

为了判断手机是否有划痕，您可以查看它，您可以在不到一秒的时间内辨别出来。

为了理解或至少转录所说的内容，它不需要那么多的思考。

虽然这是一个不完美的经验法则，但它可能会让您快速思考AI系统可以执行的一些任务示例。

相比之下，人工智能今天做不到的事情就是：分析市场并撰写50页的报告，人类不能在一秒钟内写出50页的分析报告，这是非常困难的，至少我不知道。

我不认为当今世界上的任何团队都知道如何让人工智能系统进行市场调查并运行扩展市场报告。

我发现了磨练直觉的最好方法之一就是找出具体的例子。

那么，让我们看一个与客户支持自动化相关的具体示例。

让我们看看一个随机的网站出售东西，所以一个电子商务公司，你有一个客户支持部门，收到这样的电子邮件，“玩具迟到了两天，所以我无法把它送给我的侄女为她的生日。

我可以退货吗？“如果你想要的是一个人工智能系统来查看这个，并决定这是退款请求，那么让我给它退回退税部门，然后我会说，你有很好的机会建立一个人工智能系统来做到这一点。

人工智能系统将作为输入，客户文本，客户通过电子邮件发送给您，并输出，这是退款请求或者这是运输问题，还是其他请求，以便将此电子邮件发送到最合适的部分您的客户支持中心。

因此，输入A是文本，输出B是这三种结果之一，是退货或运输问题，还是运输查询，或者是不同的请求。

所以，这就是今天AI可以做的事情。

这是AI今天无法做到的事情，如果你想让AI输入一个自动生成的电子邮件，它就会响应，“哦，很抱歉听到这个。

我希望你的侄女过上好日子。

是的，我们可以提供帮助，等等。“

因此，对于人工智能今天输出一个复杂的文本，今天很难通过今天的人工智能标准，事实上甚至同情你的侄女的生日，对于你可能收到的每一种可能类型的电子邮件来说都很难做到。

现在，如果您使用像深度学习算法这样的机器学习工具来尝试这样做，会发生什么。

因此，假设您试图让AI系统输入用户的电子邮件，并输出两个段落，同情和适当的响应。

假设您有一个适度大小的数据集，例如1,000个用户电子邮件和适当的响应示例。

事实证明，如果你在这类数据上运行AI系统，在1000个例子的小数据集上，这可能是你得到的性能，如果用户发电子邮件，“我的盒子被损坏了”，他们会说，“谢谢你对于你的电子邮件，“它说，”我在哪里写areview？“，”谢谢你的电子邮件。“

”什么是退货政策？“，”谢谢你的电子邮件。“

但是建造这种类型的人工智能的问题在于，只有1000个例子，人工智能系统没有足够的数据来学习如何写出三段，适当的反感。

因此，无论客户发送给您什么，您最终都可能会生成相同的简单响应，例如“感谢您的留言”。

另一件可能出错的事情，AI系统失败的另一种方式是，如果它产生了一些乱码，例如：“我的盒子什么时候开始”，它说，“谢谢，是的，现在你的，”胡言乱语。

这是一个足够困难的问题，即使有10,000或100,000个邮件示例，我也不知道这是否足以让AI系统做到这一点。

whatAI可以做什么和不能做的规则不会先加强，我通常最终不得不要求工程团队花一些时间做深入的技术调查，以便自己决定项目是否可行。

但是为了磨练你的想法以帮助你快速过滤可行或不可行的项目，这里有一些关于什么使机器学习问题更容易或更可行的其他经验法则。

一，学习一个简单的概念更可能是可行的。

嗯，简单的概念意味着什么？

对此没有正式的定义，但这是一个让你少于一秒的心理思想或极少数的精神思想得出一个结论，然后倾向于它是否是一个简单的概念。

因此，你正在寻找一辆自动驾驶汽车的车窗，以发现其他相对简单概念的汽车。

然而，如何写出移情反应，那么复杂的用户投诉，那将是一个简单的概念。

其次，如果你有可用的数据，机器学习问题更可能是可行的。

这里，我们的数据意味着输入A和输出B，你希望AI系统在你的A到B中输入到输出映射。

因此，例如，在客户支持应用程序中，输入A将是来自客户的电子邮件的示例，并且B可以标记这些客户电子邮件中的每一个是关于它是退款请求还是运送查询，或者是三个结果之一的其他问题。

然后，如果你有成千上万的电子邮件同时包含A和B，那么建立一个机器学习系统来实现这一目标的几率非常高。

人工智能是新的电力，它正在改变每个行业，但它也不是魔术，它不能在阳光下做所有事情。

我希望通过这个视频来帮助你磨练你对它能做什么和不能做什么的直觉，并增加你选择可行和有价值的项目的可能性，也许你的团队可以尝试一下。

为了帮助您继续发展您的直觉，我想向您展示更多关于theAI能做什么和不能做什么的例子。

我们进入下一个视频。

讲师：[Andrew Ng](https://www.coursera.org/instructor/andrewng)
课程：<https://www.coursera.org/learn/ai-for-everyone>