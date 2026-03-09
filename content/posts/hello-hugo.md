---
title: "Hugo + PaperMod + 播放列表 + 动画效果"
date: 2025-12-24
draft: false
---

欢迎来到我的博客示例文章，这是我用 **Hugo + Caddy** 搭建的博客 🚀
这篇文章展示了 **全站播放列表** 和 **Apple 官网风格动画**。

## 播放列表示例

{{< music >}}

## 动画效果示例

<div class="fade-up">
这里是第一段带淡入动画的内容。  
可以滚动到这里时自动显示。
</div>

<div class="fade-up">
这里是第二段带淡入动画的内容。  
同样会在滚动到可视区域时淡入。
</div>

### 代码示例

```python
# 代码块也支持 PaperMod 高亮
def hello():
    print("Hello Hugo + PaperMod!")