---
title: "《统计学习方法》第 2 章 感知机 与 sklearn 对比"
categories: 统计学习方法
tags:
  - ML
comments: true
date: 2019-06-05 17:03:54
---

Statistical Learning Method 统计学习方法  [https://pypi.org/project/slmethod/](https://pypi.org/project/slmethod/)

![sklearn, origin, dual](https://upload-images.jianshu.io/upload_images/910914-f8e0fd6d7a17c9a1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

<!--more-->

```python
import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_classification
%matplotlib inline
```

## 生成数据

```python
# X 为样本特征，y 为样本类别输出，共 30 个样本，每个样本 2 个特
# 输出有 2 个类别，没有冗余特征，每个类别一个簇，随机状态为小武小久
X, y = make_classification(n_samples=40,
                           n_features=2,
                           n_informative=2,
                           n_redundant=0,
                           n_classes=2,
                           n_clusters_per_class=1,
                           random_state=59)
```

## 处理 y 值，取值为范围 {-1, 1}

```python
y = np.array([1 if i == 1 else -1 for i in y])
```

```python
X
```

    array([[ 1.26654361,  1.20833252],
           [ 2.06535223, -2.13177734],
           [ 0.11811139,  0.76083319],
           [ 0.90184139, -0.93177662],
           [ 0.96240122, -0.99933393],
           [ 0.32421018, -0.79732491],
           [ 0.16465073, -0.67426018],
           [-0.8393532 ,  0.02946355],
           [ 1.50737475, -1.62701845],
           [ 1.81169336, -1.46844229],
           [ 2.63399788,  0.97604937],
           [ 1.59518059, -1.52110826],
           [ 1.74505037,  1.46262955],
           [ 1.86201667,  0.93060442],
           [ 0.11905276, -0.52595242],
           [ 1.48508147, -0.97794231],
           [-0.92705557,  0.39367018],
           [ 3.42983834, -2.72193889],
           [ 1.99481682,  1.60244273],
           [ 2.59197055,  1.29968242],
           [ 1.60598522, -1.13518763],
           [ 1.52118196,  1.12174498],
           [ 0.13097699, -0.58481754],
           [ 0.84318571,  0.65777867],
           [ 1.0940501 , -0.02064728],
           [ 0.36579428,  1.32704784],
           [ 1.46113021,  1.11893705],
           [ 0.42126239, -0.25448586],
           [ 0.97213672,  0.63569881],
           [ 0.81731191,  0.7569019 ],
           [ 1.85348049, -1.36379487],
           [ 0.81830809,  0.89762419],
           [ 0.9559071 , -1.13200362],
           [ 1.19788365,  0.24486292],
           [ 0.43394253,  1.2190042 ],
           [ 0.75245696, -1.00391468],
           [ 0.26120942, -0.49444024],
           [ 0.23915671,  1.72744475],
           [ 1.33104015,  1.73132756],
           [ 2.37528241,  1.47588251]])

```python
y
```

    array([ 1, -1,  1, -1, -1, -1, -1, -1, -1, -1,  1, -1,  1,  1, -1, -1, -1,
           -1,  1,  1, -1,  1, -1,  1,  1,  1,  1, -1,  1,  1, -1,  1, -1,  1,
            1, -1, -1,  1,  1,  1])

```python
plt.scatter(X[:, 0], X[:, 1], c=y, s=40, marker='o')
```

    <matplotlib.collections.PathCollection at 0x129908d68>

![scatter](https://upload-images.jianshu.io/upload_images/910914-4d1702d6036902db.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## sklearn 里面的 Perceptron

```python
from sklearn.linear_model import Perceptron
```

```python
clf = Perceptron(fit_intercept=True, max_iter=1000, shuffle=False)
clf.fit(X, y)
```

    Perceptron(alpha=0.0001, class_weight=None, early_stopping=False, eta0=1.0,
               fit_intercept=True, max_iter=1000, n_iter_no_change=5, n_jobs=None,
               penalty=None, random_state=0, shuffle=False, tol=0.001,
               validation_fraction=0.1, verbose=0, warm_start=False)

```python
# Weights 权重（值）
print(clf.coef_)
```

    [[2.06165026 2.89632885]]

```python
# bias 截距
print(clf.intercept_)
```

    [-1.]

```python
plt.scatter(X[:, 0], X[:, 1], c=y, s=40, marker='o')

minX = np.min(X[:, 0])
maxX = np.max(X[:, 0])
x_points = np.array([minX, maxX])

sklearn_y = -(clf.coef_[0][0] * x_points + clf.intercept_) / clf.coef_[0][1]
plt.plot(x_points, sklearn_y, 'b-.', label='sklearn', linewidth=0.3)
```

    [<matplotlib.lines.Line2D at 0x12bdbe320>]

![sklearn](https://upload-images.jianshu.io/upload_images/910914-3139eb7a1c0e3173.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 原始感知机

```python
from slmethod.perceptron import Perceptron
```

```python
origin_clf = Perceptron(dual=False)
origin_clf.fit(X, y)
```

```python
print(origin_clf.w)
```

    [0.20616503 0.28963289]

```python
print(origin_clf.b)
```

    -0.1

## 对偶形式

```python
dual_clf = Perceptron(dual=True)
dual_clf.fit(X, y)
```

```python
print(dual_clf.w)
```

    [0.20616503 0.28963289]

```python
print(dual_clf.b)
```

    -0.1

## 绘图

```python
plt.scatter(X[:, 0], X[:, 1], c=y, s=40, marker='o')
sklearn_y = -(clf.coef_[0][0] * x_points + clf.intercept_) / clf.coef_[0][1]
origin_y = -(origin_clf.w[0] * x_points + origin_clf.b) / origin_clf.w[1]
dual_y = -(dual_clf.w[0] * x_points + dual_clf.b) / dual_clf.w[1]
plt.plot(x_points, sklearn_y, 'b*', label='sklearn')
plt.plot(x_points, origin_y, 'r.-', label='origin')
plt.plot(x_points, dual_y, 'g-.', label='dual')
plt.legend()
plt.show()
```

![sklearn, origin, dual](https://upload-images.jianshu.io/upload_images/910914-f8e0fd6d7a17c9a1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## slmethod 绘图

slmethod 库的 估计器有一个 show2D() 方法，可以绘制动态图。

![slmethod_perceprton.gif](https://upload-images.jianshu.io/upload_images/910914-d3b3588f860886b1.gif?imageMogr2/auto-orient/strip)

从上图可以看到 sklearn，原始类型和对偶形式的线几乎重合了。
