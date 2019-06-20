---
title: “达观杯”文本分类挑战赛新手入门代码
categories: AI
tags:
  - ML
comments: true
date: 2019-06-20 22:19:22
---

![image](http://third.datacastle.cn/pkbigdata/master.other.img/7774acd5-8ff9-4d83-b40a-2236cc5807fb.png)

## 任务

建立模型通过长文本数据正文(article)，预测文本对应的类别(class)

<!--more-->

### 数据

> 注 : 报名参赛或加入队伍后，可获取数据下载权限。

数据包含 2 个 csv 文件：

**train_set.csv**：此数据集用于训练模型，每一行对应一篇文章。
文章分别在“字”和“词”的级别上做了脱敏处理。
共有四列：

1. 第一列是文章的索引(id)，
2. 第二列是文章正文在“字”级别上的表示，即字符相隔正文(article)；
3. 第三列是在“词”级别上的表示，即词语相隔正文(word_seg)；
4. 第四列是这篇文章的标注(class)。

> 注：每一个数字对应一个“字”，或“词”，或“标点符号”。“字”的编号与“词”的编号是独立的！

**test_set.csv**：此数据用于测试。
数据格式同 `train_set.csv`，但不包含 `class`。

> 注：test_set与train_test中文章id的编号是独立的。 友情提示：请不要尝试用excel打开这些文件！由于一篇文章太长，excel可能无法完整地读入某一行！

### 评分标准

#### 评分算法

**binary-classification**

采用各个品类F1指标的算术平均值，它是 `Precision` 和 `Recall` 的调和平均数。

 ![image](http://third.datacastle.cn/pkbigdata/master.other.img/c866e103-47f8-4a56-bcf4-2d4bff7d4082.png)

其中，`Pi` 是表示第 `i ` 个种类对应的 `Precision`， `Ri` 是表示第 `i` 个种类对应 `Recall`。 `AB` 榜的划分方式和比例： 
【1】评分采用AB榜形式，提交文件必须包含测试集中所有用户的预测值。排行榜显示A榜成绩，竞赛结束后2小时切换成B榜单。B榜成绩以选定的两次提交或者默认的最后两次提交的最高分为准，最终比赛成绩以B榜单为准。 
【2】此题目的AB榜是随机划分，A榜数据占50%，B榜使用全量测试集，即占100%。

## 挑战赛任务背景

### 文本分类

* 这个比赛的任务就是文本分类，是自然语言处理 (NLP) 领域里一项 最最基本的任务。
* 但这个任务的难点就是在于，文本的长度非常长， 大约3000个词，一般任务也就300词。
* 而文本的长度过长对文本的 智能解析带来了很多挑战。

### 概念

1. 字
1. 词
1. 中文分词

## 用传统的监督学习模型对一段文 本进行分类的基本过程

这里提前假设:
已经有了一个学习的机器学习模型 `f`，供你使用

> 注:函数输出的类别是我们事先人为约定好，比如我让数字4代表政治类， 数字3代表科技类，...

## 比赛数据

### 训练数据集

### 测试数据集

## 求解问题的本质

求一个数学函数(又可称为机器学习模型):

$$
y=f\left(x_{1}, x_{2}, x_{3}, \ldots, x_{6}\right)
$$

使模型预测能力更强


## 哪些机器学习算法

* 传统的监督学习算法(西瓜书各章节都有对应)
  * 比如，**对数几率回归/支持向量机/朴素贝叶斯/决策树/集成学习** 等
* 深度学习 
  * 比如 **cnn/rnn/attention** 等模型

## 源码解析

```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jun 20 21:17:51 2019

@author: iosdevlog
"""

""" 导入所需要的软件包 """
import pandas as pd 
from sklearn.linear_model import LogisticRegression #导入线性回归库
from sklearn.feature_extraction.text import CountVectorizer #导入特征提取库


print("开始")

"""
@ 代码功能简介： 从硬盘上读取已下载好的数据，并进行简单处理
@ 知识点定位：数据预处理
"""
#读取文件，并且删除无关东西
df_train = pd.read_csv("./train_set.csv")
df_test = pd.read_csv("./test_set.csv")
df_train.drop(columns =["article", "id"], inplace = True ) # 为什么要删除这两个列? id 列无意义，不需要用 article，可直接删除
df_test.drop(columns =["article"], inplace = True ) 

"""
@ 代码功能简介：将数据集中的字符文本转换成数字向量，以便计算机能够进行处理
  （一段数字 ---> 一个向量）
@ 知识点定位：特征工程
"""
# 获取特征向量
vectorizer = CountVectorizer(ngram_range = (1,2), min_df = 3, max_df = 0.9, max_features = 100000) # 特征提取
vectorizer.fit(df_train["word_seg"]) # 为什么要训练这一列内容? 要先学习整个数据集的词的 DF（文档词频）
x_train = vectorizer.transform(df_train["word_seg"]) #特征转为特征向量
x_test = vectorizer.transform(df_test["word_seg"])
y_train = df_train["class"] - 1  # 这里为啥要给所有的类别都减去 1? 减 1 是代码习惯问题，让 class 从 0 计数

"""
@ 代码功能简介：训练一个分类器
@ 知识点定位：传统坚督学习 之 线性逻辑回归模型
"""
lg = LogisticRegression(C = 4, dual = True) # 逻辑回归初始化
lg.fit(x_train, y_train) # 进行训练，模型保存在 lg 里面

"""
根据上面训练好的分类器对测试集的每个样本进行预测
"""
y_test = lg.predict(x_test) # 用模型进行测试

"""
将测试集的预测结果保存至本地
"""
# 根据上面训练好的分类器对测试集的每个样本进行预测
df_test["class"] = y_test.tolist() # 测试结果转为列表，并且放入测试文档的类别里面。问题5：测试文档没有类别这个列。这行代码会自动给测试文档添加一个类别列。
df_test["class"] = df_test["class"] + 1  # 为什么又要给所有类别分别加 1
df_result = df_test.loc[:, ["id", "class"]]  # 从测试集里面拿到 ["id", "class"] 列的内容
df_result.to_csv("./result.csv", index = False) #测试结果转为提交的CSV格式

print("结束")
```

## 如何提高模型性能

1. 数据预处理
1. 特征工程
1. 机器学习算法
1. 模型集成

## 参考：

1. [“达观杯”文本智能处理挑战赛_赛体与数据](https://www.dcjingsai.com/common/cmpt/)
1. [Kaggle: Starter:“达观杯”文本分类挑战赛新手入门代码](https://www.kaggle.com/mldatabase/starter)
1. [深度之眼](http://www.deepshare.net)
