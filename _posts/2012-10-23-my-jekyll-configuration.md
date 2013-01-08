---
layout: post
title: "My Jekyll configuration"
description: ""
category: 技术
tags: [Jekyll]
---

上一篇将到Jekyll的简单搭建，这一节总结了自己的自定义配置过程

##RDiscount

自带的markdown解析器有问题，对中文支持不好，下载RDiscount解析器：

<pre><code> $ sudo gem install rdiscount</code></pre>

修改 <code>_config.yml</code>文件，修改或添加以下属性：

	markdown: rdiscount

##实现代码高亮

1. **小片段**

比如某个参数设置等，可以直接用markdown自己的格式，即在需要标记为`code`的地方缩进一个tab，那么在生成html时便会自动加上`<pre><code>`标记。如果是在一句话中标记Code，像上句这样，则只需要用反引号包含相关文字就可以了

2. **语言相关**

Jekyll通过[Pygments](http://pygments.org/)支持超过百种语言的代码高亮，标记非常简单，基本就是highlight+语言名称[这种格式](https://github.com/mojombo/jekyll/wiki/Liquid-Extensions/)，至于CSS的写法可以[参考这里](https://github.com/mojombo/tpw/blob/master/css/syntax.css)，也可以通过上面的Pygments程序生成[css文件](http://tinyao.github.com/assets/css/syntax.css)。

效果显示

{% highlight java %}
package org.czzz.view.tablelist.model;

import android.view.View;

public class ViewItem implements IListItem {

	private boolean mClickable = true;
	private View mView;

	public ViewItem(View view) {
		this.mView = view;
	}

	public View getView() {
		return this.mView;
	}

	@Override
	public boolean isClickable() {
		return mClickable;
	}

}
{% endhighlight %}


{% highlight ruby linenos %}
def foo
  puts 'foo'
  end
{% endhighlight %}


3\. **gist嵌入**

不用插件的话可以直接用官方gist嵌入方法，如果用这个[插件](https://gist.github.com/1027674)的话则仅需要写上gist+gist id即可，更加方便。

4\. **Prettyprint CSS**

另外推荐twitter的开源项目Bootstrap，利用它外加[Prettyprint](http://code.google.com/p/google-code-prettify/)可以方便快速的显示高亮代码。

<pre class="prettyprint linenums">
int x = foo();  /* This is a comment  <span class="nocode">This is not code</span>
  Continuation of comment */
int y = bar();
</pre>

<pre class="prettyprint linenums">
ialert("test");
</pre>

效果很不错，不过我不知道怎么回事，在我这很多语言都支持不了，同样是java代码段小时，能够解析。但复杂点的代码段就fail了。所以最后还是选择Pygments作为代码高亮方案。

##导入wordpress等其他博客数据

参考官方说明 [https://github.com/mojombo/jekyll/wiki/blog-migrations](https://github.com/mojombo/jekyll/wiki/blog-migrations)

我使用的是Wordpress to Jekyll Exporter插件，在wp后台安装插件，然后导出数据，根据需要选择post，page等信息添加到<code>Jekyll</code>中。


未完待记 . . .

我的jekyll-bootstrap:  [https://github.com/tinyao/tinyao.github.com](https://github.com/tinyao/tinyao.github.com)， 有些冗余文件～


{% include JB/setup %}
