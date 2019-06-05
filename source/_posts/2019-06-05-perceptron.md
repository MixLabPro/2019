---
title: "《统计学习方法》第 2 章 感知机 可视化"
categories: 统计学习方法
tags:
  - ML
comments: true
date: 2019-06-05 15:29:13
---

![slmethod_perceprton.gif](https://upload-images.jianshu.io/upload_images/910914-d3b3588f860886b1.gif?imageMogr2/auto-orient/strip)

## 源码：[https://github.com/iOSDevLog/slmethod](https://github.com/iOSDevLog/slmethod)

## 原理

假设输入空间（特征空间）是 $\mathrm{x} \subseteq \mathrm{R}^{n}$，输出空间是$y=\{+1,-1\}$

### 模型

$$
f(x)=\operatorname{sign}(w \cdot x+b)
$$

称为 **感知机**。

<!--more-->

- $\mathrm{w}$ 和 $\mathrm{b}$ 为感知机模型参数
- $\mathrm{w} \subseteq \mathrm{R}^{n}$叫作权重/权值（weight）或权值向量（weight vector）
- $\mathrm{b} \in \mathrm{R}$ 叫作偏置（bias）
- $\mathbf{w} \cdot \mathbf{x}$ 表示 $\mathbf{w}$ 和 $\mathbf{x}$ 的内积
- $sign$ 是符号函数

$$
\operatorname{sign}(x)=\left\{\begin{array}{ll}{+1,} & {x \geqslant 0} \\ {-1,} & {x<0}\end{array}\right.
$$

### 策略

**假设训练数据集是线性可分的** 感知机学习的目标是求得一个能够将训练集正实例点和负实例点完全正确分开的分离超平面。为了找出这样的超平面，即确定感知机模型参数$\mathrm{w}$ 和 $\mathrm{b}$ ，需要确定一个学习策略，即定义（经验）损失函数并将损失函数极小化。

损失函数的一个自然选择是误分类点的总数。
但是，这样的损失函数不是参数 w,b 的连续可导函数，不易优化。
损失函数的另一个选择是误分类点到超平面 S 的总距离，这是感知机所采用的。

所有误分类点到超平面 S 的总距离为

$$
-\frac{1}{\|w\|} \sum_{x_{i} \in M} y_{i}\left(w \cdot x_{i}+b\right)
$$

不考虑$\frac{1}{\|w\|}$，就得到感知机学习的损失函数。

### 算法

### 原始形式

输入：训练数据集 $\mathrm{T}=\left\{\left(\mathrm{x}_{1}, \mathrm{y}_{1}\right),\left(\mathrm{x}_{2}, \mathrm{y}_{2}\right), \ldots,\left(\mathrm{x}_{\mathrm{N}}, \mathrm{y}_{\mathrm{N}}\right)\right\}$，其中 $\mathrm{x}_{\mathrm{i}} \in \mathrm{x}=\mathrm{R}_{\mathrm{n}}, \quad \mathrm{y}_{\mathrm{i}} \in \mathcal{Y}=\{-1,+1\},  \quad  \mathrm{i}=1,2\ldots, \mathbf{N}$；学习率$\eta(0<\eta \leq 1)$；

输出：$\mathrm{w}, \mathrm{b}$；感知机模型 $f(x)=\operatorname{sign}(w \cdot x+b)$。

1. 选取初值 $\mathbf{w}_{0}, \mathbf{b}_{0}$
1. 在训练集中选取数据 $\left(\mathrm{x}_{\mathrm{i}}, \mathrm{y}_{\mathrm{i}}\right)$
1. 如果 $\mathrm{y}_{\mathrm{i}}\left(\mathrm{y} \cdot \mathrm{x}_{\mathrm{i}}+\mathrm{b}\right) \leq 0$

$$
\begin{array}{l}{w \leftarrow w+\eta y_{i} x_{i}} \\ {b \leftarrow b+\eta y_{i}}\end{array}
$$

1. 转至 2，直至训练集中没有误分类点。

```python
    # 原始
    def _fit(self):
        n_samples, n_features = self.X.shape
        # 选取初值 w0,b0
        self.w = np.zeros(n_features, dtype=np.float64)
        self.b = 0.0

        is_finished = False
        # 一直循环
        while not is_finished:
            count = 0  # 记录误分类点的数目
            for i in range(n_samples):
                # 如果 yi(w·xi+b)≤0
                if self.y[i] * self.sign(self.w, self.X[i], self.b) <= 0:
                    self.w += self.l_rate * np.dot(self.y[i], self.X[i])
                    self.b += self.l_rate * self.y[i]
                    self._wbs.append((i, self.w, self.b))
                    count += 1

                # 直至训练集中没有误分类点
                if count == 0:
                    is_finished = True
```

这种学习算法直观上有如下解释：

> 当一个实例点被误分类，即位于分离超平面的错误一侧时，则调整 w,b 的值，使分离超平面向该误分类点的一侧移动，以减少该误分类点与超平面间的距离，直至超平面越过该误分类点使其被正确分类。

算法是感知机学习的基本算法，对应于后面的对偶形式，称为原始形式。

感知机学习算法简单且易于实现。

#### 感知机学习算法的对偶形式

1. $a \leftarrow 0, \quad b \leftarrow 0$
1. 在训练集中选取数据 $\left(x_{i}, y_{i}\right)$
1. 如果 $ y_{i}\left(\sum_{j=1}^{N} \alpha_{j} y_{j} x_{j} \cdot x_{i}+b\right) \leqslant 0 $

$$
\begin{array}{l}{\alpha_{i} \leftarrow \alpha_{i}+\eta} \\ {b \leftarrow b+\eta y_{i}}\end{array}
$$

1. 转至 2 直到没有误分类数据。

```python
    # 对偶
    def _fit_dual(self):
        n_samples, n_features = self.X.shape
        self.w = np.zeros(n_features)
        self.b = 0.0

        i = 0
        while i < n_samples:
            if self.y[i] * self.sign(self.w, self.X[i], self.b) <= 0:
                self.w += self.l_rate * np.dot(self.y[i], self.X[i])
                self.b += self.l_rate * self.y[i]
                self._wbs.append((i, self.w, self.b))
                i = 0
            else:
                i += 1
```

对偶形式中训练实例仅以内积的形式出现。为了方便，可以预先将训练集中实例间的内积计算出来并以矩阵的形式存储，这个矩阵就是所谓的 Gram 矩阵（Gram matrix）。

## 测试

`pytest fixture` 中的 `pytest.mark.parametrize` 装饰器可以实现用例参数化。
这里直接传进 5 组参数。

```python
import pytest
from slmethod.perceptron import Perceptron
import numpy as np


#
@pytest.mark.parametrize("dual, l_rate", [(True, None), (False, None),
                                          (False, 1), (False, 0.1),
                                          (False, 0.01)])
def test_perceptron(dual, l_rate):
    train_X = np.array([ ... ])
    train_y = np.array([ ... ])

    clf = Perceptron(dual=dual, l_rate=l_rate)
    clf.fit(train_X, train_y)
    test_X = np.array([[10, 3], [-29, 5]])
    test_y = np.array([1, -1])
    predict_y = clf.predict(test_X)
    assert np.array_equal(test_y, predict_y)
```

![pytest.png](https://upload-images.jianshu.io/upload_images/910914-85eff8e7dc8b090b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

具体代码可查看 GitHub: [https://github.com/iOSDevLog/slmethod/blob/master/slmethod/test/test_perceptron.py](https://github.com/iOSDevLog/slmethod/blob/master/slmethod/test/test_perceptron.py)

## 动画

[https://matplotlib.org/api/animation_api.html](https://matplotlib.org/api/animation_api.html)

### 只展示 2D 数据

```python
    def show2d(self, name=None):
        if (self.X.shape[1] != 2):
            raise ValueError("X must have 2d array.")
```

### 取 X 最小值与最大值用于画直线

```python
        minX = np.min(self.X[:, 0])
        maxX = np.max(self.X[:, 0])
        x_points = np.array([minX, maxX])
```

### 导入相关库

```python
from matplotlib import pyplot as plt
from matplotlib import animation
import numpy as np
```

### 静态图

```python
        fig, ax = plt.subplots()
        ax.scatter(self.X[:, 0], self.X[:, 1], c=self.y, s=1, marker="o")
        line, = ax.plot(x_points,
                        np.zeros(len(x_points)),
                        "r-",
                        linewidth=2,
                        label="slmethod perceptron")
```

### 更新动画

接着，构造自定义动画函数 `update`，用来更新每一帧上各个 x 对应的 y 坐标值，参数表示第 i 帧：

```
        def update(iter):
            (index, w, b) = self._wbs[iter]
            # title
            title = "iter: {}, index: {}".format(iter, index)
            plt.title(title)
            # show w and b
            wb = "w0: {}, w1: {}, b: {}".format(w[0], w[1], b)
            ax.set_xlabel(wb)
            # update y
            y_points = -(w[0] * x_points + b) / w[1]
            line.set_ydata(y_points)

            return line, ax
```

### 初始化

然后，构造开始帧函数 `init`：

```
        def init():
            line.set_ydata(np.zeros(len(x_points)))
            return line,
```

### 生成动画

接下来，我们调用 FuncAnimation 函数生成动画。

参数说明：

- fig 进行动画绘制的 figure
- func 自定义动画函数，即传入刚定义的函数 update
- frames 动画长度，一次循环包含的帧数
- init_func 自定义开始帧，即传入刚定义的函数 init
- interval 更新频率 ms

```python
        anim = FuncAnimation(fig,
                             update,
                             init_func=init,
                             frames=len(self._wbs),
                             interval=200)
```

### 显示动画

```python
            plt.show()
```

### 保存 `gif`

```python
            anim.save(name, writer="imagemagick")
```

> 保存和显示不能同时，不知道为什么？

具体代码请查看：[https://github.com/iOSDevLog/slmethod/blob/master/slmethod/perceptron.py](https://github.com/iOSDevLog/slmethod/blob/master/slmethod/perceptron.py)

## 使用

`pip` 安装

```sh
pip install slmethod
```

使用方法和 `sklearn` 非常相似，以下步骤可省略部分。

1. 获取数据
1. 数据预处理
1. 划分测试集与训练集
1. 估计器拟合
1. 可视化
1. 预测测试集

```python
import numpy as np
from sklearn.datasets import make_classification
from slmethod.perceptron import Perceptron

separable = False
while not separable:
    samples = make_classification(n_samples=100,
                                  n_features=2,
                                  n_redundant=0,
                                  n_informative=1,
                                  n_clusters_per_class=1,
                                  flip_y=-1)
    red = samples[0][samples[1] == 0]
    blue = samples[0][samples[1] == 1]
    separable = any([
        red[:, k].max() < blue[:, k].min()
        or red[:, k].min() > blue[:, k].max() for k in range(2)
    ])

X = samples[0]
y = samples[1]
y = np.array([1 if i == 1 else -1 for i in y])

minX = np.min(X[:, 0])
maxX = np.max(X[:, 0])
x_points = np.array([minX, maxX])

origin_clf = Perceptron(dual=False)
origin_clf.fit(X, y)

print(origin_clf.w)
print(origin_clf.b)

origin_clf.show2d('slmethod_perceprton.gif')
```

代码：[https://gist.github.com/jiaxianhua/3442e76aefff8202a6e33532e74d0ae5](https://gist.github.com/jiaxianhua/3442e76aefff8202a6e33532e74d0ae5)
