---
title: "Python 基础"
categories: AI
tags:
  - ML
  - Python
comments: true
date: 2019-05-23 18:27:13
---

## 安装 Python

![Anaconda](https://docs.anaconda.com/_images/navigator-home-1-6.png)

[https://www.anaconda.com/](https://www.anaconda.com/)

由 Python 提供支持的领先开放数据科学平台

![spyder](https://docs.spyder-ide.org/_images/mainwindow_default_1610.png)

[https://www.spyder-ide.org/](https://www.spyder-ide.org/)

Anaconda 附带的免费 IDE

![image.png](https://jupyter.org/assets/jupyterpreview.png)

[https://jupyter.org/](https://jupyter.org/)

使用实时代码，可视化，文本创建和共享文档……

<!--more-->

## 1. 变量和类型

### 变量赋值

```python
x = 5
x
```

5

### 运算

```python
x + 9 # 加
```

14

```python
x - 9 # 减
```

-4

```python
x * 9 # 乘
```

45

```python
x ** 9 # 乘方
```

1953125

```python
x % 9 # 取模
```

5

```python
x / float(9) # 除
```

0.5555555555555556

### 类型与类型转换

| 类型转换 | 示例 | 类型 |
| - | - | - |
| str() | '59', '3.14', 'True' |  字符串 |
| int() | 5, 9 | 整型 |
| float() | 5.9, 3.14 | 浮点数 |
| bool() | True, True, True | 布尔 |

## 2. 字符串（String）

### 帮助

```python
help(str)
```

```python
zh_string = "最好的人工智能开发"
zh_string
```

'最好的人工智能开发'

### 字符串操作

```python
zh_string * 2
```

'最好的人工智能开发最好的人工智能开发'

```python
zh_string + '就在这里了'
```

'最好的人工智能开发就在这里了'

```python
'我' in zh_string
```

False

### 字符串方法

```python
zh_string.upper()
zh_string.lower()
zh_string.count('在')
zh_string.replace('在', ' is ')
zh_string.strip()
```

'最好的人工智能开发'

## 3. 列表（List）

```python
a = '是'
b = '这'
zh_list = ['我', '列表', a, b]
zh_list2 = [[1, 3, 5, 7], [2, 4, 6, 8]]
```

### 元素选择

```python
# 下标
zh_list[1] # 索引从 0 开始，这里取第 2 个元素
zh_list[-1] # 最后一个元素
```

'这'

```python
# 分片
zh_list[1:3] # 索引 1, 2
zh_list[1:] # 索引 1 及之后
zh_list[:3] # 索引 3 之前
zh_list[:] # 所有 / 复制列表
```

['我', '列表', '是', '这']

```python
# 子列表
zh_list + zh_list
zh_list * 2
```

['我', '列表', '是', '这', '我', '列表', '是', '这']

```python
# 列表方法
zh_list = [1, 3, 5, 7]
zh_list.index(3) # 获取元素下标
zh_list.count(3) # 统计元素个数
zh_list.append(0) # 追加元素
zh_list.remove(0) # 移除元素
del(zh_list[:2]) # 删除前 2 个元素
zh_list.reverse() # 反转列表
zh_list.extend([2, 4, 6]) # 扩展列表
zh_list.pop(-1) # 弹出（移除并返回）指定 index 元素
zh_list.insert(3, 9) # 在 index 位置新增元素
zh_list.sort() # 排序列表
```

## 4. 库

![image.png](https://www.anaconda.com/wp-content/uploads/2018/11/distro-01-1.png)

### 导入库

```python
import numpy
import numpy as np
```

### 选择性导入

```python
from sklearn import datasets
```

## 5. Numpy 数组

```python
zh_list = [1, 3, 5, 7]
zh_array = np.array(zh_list)
zh_2darray = np.array([[1, 3, 5, 7], [2, 4, 6, 8]])
```

### Numpy 数组元素选择

```python
# 下标
zh_list[0] # 索引从 0 开始
```

1

```python
# 切片
zh_list[:2]
```

[1, 3]

```python
# 2 维数组下标
zh_2darray[:, 1]
```

array([3, 4])

### Numpy 数组操作

```python
zh_array > 3
```

array([False, False,  True,  True])

```python
zh_array * 2
```

array([ 2,  6, 10, 14])

```python
zh_array + np.array([9, 8, 7, 6])
```

array([10, 11, 12, 13])

### Numpy 数组函数

```python
other_array = np.array([5, 5, 5, 5])
zh_array.shape # 维数
np.append(zh_array, other_array) # 追加数组
np.insert(zh_array, 1, 5) # 插入元素
np.delete(zh_array, [1]) # 删除元素
np.mean(zh_array) # 均值
np.median(zh_array) # 中位数
np.corrcoef(zh_array) # 相关系数
np.std(zh_array) # 标准差
```

2.23606797749979
