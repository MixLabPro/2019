---
title: 'Matplotlib 基础'
categories: Python
tags:
  - ML
  - DL
  - AI
comments: true
date: 2019-05-26 20:19:40
---

![Matplotlib](https://matplotlib.org/_static/logo2.png)

Matplotlib 是一个 Python 绘图库，可以跨平台生成各种硬拷贝格式和交互式环境的出版品质数据。

![Matplotlib](https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Mpl_screenshot_figures_and_code.png/600px-Mpl_screenshot_figures_and_code.png)

<!--more-->

## 绘图解剖（Plot Anatomy）

![Plot](https://user-gold-cdn.xitu.io/2019/5/26/16af39b82c3cc2b2?w=1504&h=1366&f=png&s=312516)

## 工作流程（Workflow）

使用 matplotlib 创建绘图的基本步骤

```python
import matplotlib.pyplot as plt
# 1. 准备数据
x = [1, 2, 3, 4]
y = [10, 20, 25, 30]
# 2. 创建绘图
fig = plt.figure()
# 3. 绘图
ax = fig.add_subplot(111)
# 4. 自定义绘图
ax.plot(x, y, color='lightblue', linewidth=3)
ax.scatter([2, 4, 6],
           [5, 15, 25],
           color='darkgreen',
           marker='^')
ax.set_xlim(1, 6.5)
# 5. 保存图
plt.savefig('foo.png')
# 6. 显示图
plt.show()
```

## 准备数据

### 1D数据

```python
import numpy as np
x = np.linspace(0, 10, 100)
y = np.cos(x)
z = np.sin(x)
```

### 2D数据 或 图像

```python
from matplotlib.cbook import get_sample_data
import os
data = 2 * np.random.random((10, 10))
data2 = 3 * np.random.random((10, 10))
Y, X = np.mgrid[-3:3:100j, -3:3:100j]
U = -1 - X**2 + Y
V = 1 + X - Y**2
img = np.load(get_sample_data(os.getcwd() + '/axes_grid/bivariate_normal.npy'))
```

## 创建图

```python
import matplotlib.pyplot as plt
# 魔法函数（Magic Functions）功能是可以内嵌绘图，并且可以省略掉 plt.show()
%matplotlib inline
```

### 图形（Figure）

```python
fig = plt.figure()
```

```python
fig2 = plt.figure(figsize=plt.figaspect(2.0))
```

### 轴（Axes）

所有绘图都是针对 Axes 完成的。 在大多数情况下，子图符合您的需求。子图是网格系统上的轴。

```python
fig.add_axes()
```

```python
ax1 = fig.add_subplot(221)  # 行-列-数字
```

```python
ax3 = fig.add_subplot(212)
```

```python
fig3, axes = plt.subplots(nrows=2, ncols=2)
```

![output_24_0.png](https://upload-images.jianshu.io/upload_images/910914-a7d9191341a6fd0c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

```python
fig4, axes2 = plt.subplots(ncols=3)
```

![output_25_0.png](https://upload-images.jianshu.io/upload_images/910914-17de9e32d5182e07.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 常规绘制

### 1D 数据

```python
fig, ax = plt.subplots()
# 用连接它们的线或标记绘制点
lines = ax.plot(x, y)
# 绘制未连接的点，缩放或着色
ax.scatter(x, y)
# 绘制垂直矩形（恒定宽度）
axes[0, 0].bar([1, 2, 3], [3, 4, 5])
# 绘制horiontal矩形（恒定高度）
axes[1, 0].barh([0.5, 1, 2.5], [0, 1, 2])
# 在轴上绘制一条水平线
axes[1, 1].axhline(0.45)
# 在轴上绘制一条垂直线
axes[0, 1].axvline(0.65)
# 绘制填充的多边形
ax.fill(x, y, color='blue')
# 在 y 值和 0 之间填充
ax.fill_between(x, y, color='yellow')
```

![output_28_1.png](https://upload-images.jianshu.io/upload_images/910914-33fe4b841317315d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 2D数据 或 图像

```python
fig, ax = plt.subplots()
# 彩色贴图或 RGB 数组
im = ax.imshow(img,
               cmap='gist_earth',
               interpolation='nearest',
               vmin=-2,
               vmax=2)
```

![output_30_0.png](https://upload-images.jianshu.io/upload_images/910914-9ca0a21a2adbb164.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

```python
# 二维数组的伪彩色图
axes2[0].pcolor(data2)
# 二维数组的伪彩色图
axes2[0].pcolormesh(data)
# 绘制轮廓
CS = plt.contour(Y, X, U)
# 绘制填充轮廓
axes2[2].contourf(data)
# 标记等高线图
axes2[2] = ax.clabel(CS)
```

![output_31_0.png](https://upload-images.jianshu.io/upload_images/910914-b0da6f83423f7779.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 向量字段

```python
# 向轴添加箭头
axes[0, 1].arrow(0, 0, 0.5, 0.5)
# 绘制箭头的 2D 字段
axes[1, 1].quiver(y, z)
# 绘制箭头的 2D 字段
axes[0, 1].streamplot(X, Y, U, V)
```

### 数据分布

```python
# 绘制直方图
ax1.hist(y)
# 制作一个箱图
ax3.boxplot(y)
# 制作小提琴图
ax3.violinplot(z)
```

## 自定义绘图

### 颜色，彩条（Color bars）和彩图（Color maps）

```python
plt.plot(x, x, x, x**2, x, x**3)
ax.plot(x, y, alpha=0.4)
ax.plot(x, y, c='k')
fig.colorbar(im, orientation='horizontal')
im = ax.imshow(img, cmap='seismic')
```

![output_38_0.png](https://upload-images.jianshu.io/upload_images/910914-c63dd40934bac10c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 标记
```python
fig, ax = plt.subplots()
ax.scatter(x, y, marker=".")
ax.plot(x, y, marker="o")
```

![output_40_1.png](https://upload-images.jianshu.io/upload_images/910914-b38cf16582930eb9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 线条样式

```python
plt.plot(x, y, linewidth=4.0)
```

![output_42_1.png](https://upload-images.jianshu.io/upload_images/910914-93e81310477b26af.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

```python
plt.plot(x, y, ls='solid')
```

![output_43_1.png](https://upload-images.jianshu.io/upload_images/910914-99cbac47dfd84f32.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

```python
plt.plot(x, y, ls='--')
```

![output_44_1.png](https://upload-images.jianshu.io/upload_images/910914-6309df20317e2bb1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

```python
plt.plot(x, y, '--', x**2, y**2, '-.')
```

![output_45_1.png](https://upload-images.jianshu.io/upload_images/910914-720c0f3425c671f7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

```python
plt.setp(lines, color='r', linewidth=4.0)
```

### 文字 & 注释

```python
ax.text(1,
        -2.1,
        'Example Graph',
        style='italic')
```

```python
ax.annotate("Sine",
            xy=(8, 0),
            xycoords='data',
            xytext=(10.5, 0),
            textcoords='data',
            arrowprops=dict(arrowstyle="->",
                            connectionstyle="arc3"),)
```

### 数学

```python
plt.title(r'$sigma_i=15$', fontsize=20)
```

![output_51_1.png](https://upload-images.jianshu.io/upload_images/910914-91becd3fd3092222.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 限制，图例 & 布局（Limits, Legends & Layouts）

#### 限制 & 自动缩放（Limits & Autoscaling）

```python
ax.margins(x=0.0, y=0.1)
ax.axis('equal')
ax.set(xlim=[0, 10.5], ylim=[-1.5, 1.5])
ax.set_xlim(0, 10.5)
```

#### 图例

```python
# 设置标题和x轴和y轴标签
ax.set(title='An Example Axes',
       ylabel='Y-Axis',
       xlabel='X-Axis')
```

```python
# 不重叠的图元素
ax.legend(loc='best', labels='No overlapping plot elements')
```

#### 刻度（Ticks）

```python
# 手动设置 x-ticks
ax.xaxis.set(ticks=range(1,5),
                 ticklabels=[3,100,-12,"foo"])
```

```python
# y-ticks 变长
ax.tick_params(axis='y',
               direction='inout',
               length=10)
```

#### 子图间距

```python
# 调整子图之间的间距
fig3.subplots_adjust(wspace=0.5,
                     hspace=0.3,
                     left=0.125,
                     right=0.9,
                     top=0.9,
                     bottom=0.1)
```

```python
# 子图适配图区域
fig.tight_layout()
```

#### 坐标轴（Axis Spines）

```python
# 向下移动底部轴线
ax1.spines['top'].set_visible(False)
```

```python
# 使图的顶轴不可见
ax1.spines['bottom'].set_position(('outward', 10))
```

## 保存图

### 保存图片（Save figures）

```python
plt.savefig('bar.png')
```

### 保存透明图（Save transparent figures）

```python
plt.savefig('bar_trans.png', transparent=True)
```

## 显示图

```python
plt.show()
```

### 关闭 & 清除

```python
# 清除轴
plt.cla()
# 清除整个图
plt.clf()
# 关闭一个窗口
plt.close()
```

## 示例

### 折线图（Line plot）

```python
import matplotlib.pyplot as plt
import numpy as np
a = np.linspace(0, 10, 100)
b = np.exp(-a)
plt.plot(a, b)
plt.show()
```

![output_80_0.png](https://upload-images.jianshu.io/upload_images/910914-1f37d7ba93a5bb05.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 直方图（ Histogram）

```python
import matplotlib.pyplot as plt
from numpy.random import normal,rand
x = normal(size=200)
plt.hist(x, bins=30)
plt.show()
```

![output_82_0.png](https://upload-images.jianshu.io/upload_images/910914-3423b435b1123291.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 散点图（Scatter plot）

```python
import matplotlib.pyplot as plt
from numpy.random import rand
a = rand(100)
b = rand(100)
plt.scatter(a, b)
plt.show()
```

![output_84_0.png](https://upload-images.jianshu.io/upload_images/910914-4d50084ecfe19447.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 3D 图（3D plot）

```python
from matplotlib import cm
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
import numpy as np
fig = plt.figure()
ax = fig.gca(projection='3d')
X = np.arange(-5, 5, 0.25)
Y = np.arange(-5, 5, 0.25)
X, Y = np.meshgrid(X, Y)
R = np.sqrt(X**2 + Y**2)
Z = np.sin(R)
surf = ax.plot_surface(X, Y, Z, rstride=1, cstride=1, cmap=cm.coolwarm)
plt.show()
```

![output_86_0.png](https://upload-images.jianshu.io/upload_images/910914-f40d5b046f629e7f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 在线预览

<https://github.com/iOSDevLog/AIDevLog/blob/master/Python%20%E5%9F%BA%E7%A1%80/MatplotlibBasic.ipynb>