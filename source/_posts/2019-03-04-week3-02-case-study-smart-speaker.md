---
title: "week3-2 Case study: Smart speaker 案例研究：智能扬声器"
categories: "AI For Everyone"
tags:
  - AI
  - DL
  - ML
comments: true
date: 2019-03-04 11:27:11
---

![3-2-0.png](https://upload-images.jianshu.io/upload_images/910914-be74623d47a744ec.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

在复杂的AI产品上感受到什么样的感觉，不仅仅是使用单个机器学习算法从A映射到B，而且学习算法是更大更复杂的项目或产品的一部分。

我想本周开始讨论buildingcomplex AI产品的两个案例研究。

首先，建立一个智能扬声器，以便您可以开始了解我是否有一天希望在您自己的公司中使用复杂的AI产品。

让我们开始吧。

<!--more-->

![3-2-1.png](https://upload-images.jianshu.io/upload_images/910914-7ddc936b0a697408.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![3-2-2.png](https://upload-images.jianshu.io/upload_images/910914-4533e9f71df90901.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![3-2-3.png](https://upload-images.jianshu.io/upload_images/910914-cc7c1bb0397c2b76.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

像这样的智能扬声器和语音激活设备正在风靡世界，如果你家里还没有它，也许你有一天会买一个。

我想通过案例研究来了解如何编写AI软件以让智能扬声器响应口头命令，例如“嘿设备，告诉我一个笑话。“

对于这个例子，使用Alexa，或者Okay Google，或者Hey Siri，或者Hello Baidu作为唤醒词或触发词，更多的设备不可知，我只是将”嘿设备“作为触发词或唤醒工作。

醒来说一个聪明的演讲者，让我们说你想告诉你一个笑话。

那么你如何建立一个人工智能软件来理解命令并在其上执行呢？

这些是处理命令所需的步骤。

可以有四个步骤。

第一步是触发词或唤醒词检测。

扬声器使用机器学习算法输入音频和输出。

他们只是唤醒唤醒词或触发词“嘿设备”，所以o加0或1，一旦听到触发词或唤醒词，一旦听到“嘿设备”，它就必须执行第二步，即语音承认。

所以该软件必须做的是采取“嘿设备”之后的音频并将其映射到“告诉我一个笑话。“

这也是通过机器学习完成的。

然而，这里的第一步使用A到B映射来告诉它它听到了触发词。

这使用了一个不同的A到B映射来将音频映射到你刚才所说的文本转换，在这种情况下是四个字告诉我一个笑话。

现在，算法必须通过说出这四个单词来弄清楚你真正想要的东西，所以第三步是意图识别。

这意味着你要说什么，并弄清楚你实际想做什么。

因此，今天的智能扬声器有一组有限的命令，例如他们可以说出一个笑话，或者他们可以告诉时间。

所以你可以说“嘿设备是时候了。“

他们可以播放音乐。

他们有时可以帮助您拨打电话。

他们可以告诉你天气是什么，“嘿设备，明天天气怎么样？”所以意图识别的作用是采用四个词，即语音识别的输出，并使用另一个AI软件，另一个A到B的映射输入这四个单词并输出这五个或其他意图中的哪一个。

因此，在机器学习算法的这种实现中，输入A是文本转录本告知的笑话，输出B是用户刚刚说出的这五种命令中的哪一种。

当然，你的智能扬声器可能更容易理解甚至更多的命令，在这种情况下，B可以是智能扬声器知道如何执行的五个或20个或100个命令中的任何一个。

无论你如何要求智能发言人开玩笑，希望意图识别组件能够正确识别你的意图。

所以你也可以说不只是“嘿设备，告诉我一个笑话”，但也要“嘿设备，你知道任何好话”或“嘿设备，告诉我一些有趣的东西。“

事实证明，有很多方法可以让一个聪明的演讲者开个玩笑，一个精心设计的意图识别系统应该能够识别出大部分内容。

最后，现在你的智能音箱已经发现你真的，真的想听一个笑话，最后一步是会有一个软件工程师写了一段代码来随机选择一个笑话并通过扬声器播放笑话。

换句话说，他们会开玩笑。

仅仅是为了记录，我最喜欢的笑话是为什么我在AI中有令人震惊的结果，因为人工智能是新的电力，令人震惊的电力，得到它？

希望你喜欢这个。

所以，好吧，并且认真地，你可以想到这四个步骤的算法的四个步骤，其中第一步是触发词检测，第二步是语音识别，然后是意图识别，然后最后，执行什么是命令用户要求智能扬声器执行。

因此，在这个或多个步骤的AI系统中有四个步骤的过程，这有时被称为AI管道，其中有多个AI组件。

是的，可能的机器学习组件一步一步地处理数据，并且在公司中有四个不同的团队，每个团队关注这个AI管道的一个组件，这并不罕见。

这就是我们经常在大公司内组织项目的方式。

现在让我们看一个更复杂的例子。

你们中的一个发出更复杂的命令，比如“嘿设备，设置计时器10分钟。“

这些是处理命令所需的步骤。

第一步，与之前相同的是触发字检测。

所以输入一个音频，当有人说触发器嘿设备时让我知道。

然后语音识别，你输入其余的音频和转录其余的声音，其余的音频，设置计时器10分钟，现在，意图识别hasto输入文本和输出你的意图是你想要设置计时器。

设置计时器10分钟与之前的例子之间的一个区别是告诉我一个笑话，你需要知道实际设置计时器的时间。

所以在执行步骤中，你实际上需要做两件事。

一个是提取持续时间。

这意味着，查看文本，设置计时器10分钟并拉出短语，告诉你实际设置计时器的时间长度，因此如果用户说“嘿设备，让我知道什么时候10分钟”，那么这个提取持续时间步骤必须再次拉出，10分钟的短语权利，当然，有很多方法可以使用10分钟的计时器。

你也可以说，让我知道，从现在开始10分钟或者10分钟后设置闹钟，希望，意图识别和提取持续时间组件都足够强大，可以识别所有这些都是要求10分钟计时器的不同方式。

最后，为了执行该命令，智能扬声器中应该有一个专门的软件组件可以启动具有设定持续时间的计时器，并且在它已经提取了你的意图和持续时间之后，它只是启动具有该持续时间的计时器。

这样警报在10分钟结束时就会消失。

今天的智能音箱有很多功能。

除了谈论讲笑话和设置计时器之外，还有一些其他功能，今天许多智能扬声器都可以执行，执行这些命令的键步骤是触发词或唤醒词检测，语音识别以转录命令中的文本，意图识别，确定您希望执行哪些功能或哪些命令，然后执行专门的程序来执行您发出的任何命令。

智能扬声器世界面临的挑战之一是，如果您希望您的智能扬声器拥有许多不同的功能，例如20种不同的功能，那么您需要软件工程团队才能编写20个专用软件。

一个播放音乐，一个设置音量，一个拨打电话，一个拨打当前时间，一个用于转换单位，如从一个汤匙到汤匙，或者回答非常简单的问题，等等。

因此，编写所有这些专用程序以执行您可能希望在第四步执行的所有不同命令实际上要做很多工作，而今天的智能扬声器实际上做了很多事情，许多用户难以直接提示 他们能做什么，不能做什么。

许多智能扬声器公司已经在用户培训上投入了大量资金，试图让用户知道智能扬声器可以做什么，因为一方面他们无法做到。

有很多事情你不能问聪明的演讲者，因为请打电话给我所有的三个朋友，看看他们所有人都能见面吃饭。

因此，智能扬声器的持续过程是向用户解释他们可以做什么和不能做什么。

尽管如此，通过使用语音来指挥这些扬声器可以让许多人的生活更加便利。

我希望这段视频让您了解如何构建复杂的AI产品，如智能扬声器。

为了帮助您更好地了解这些复杂产品的工作原理，让我们继续看看如何拼凑多个AI组件以构建自动驾驶汽车的二次研究。

让我们继续下一个视频。

讲师：[Andrew Ng](https://www.coursera.org/instructor/andrewng)
课程：<https://www.coursera.org/learn/ai-for-everyone>
