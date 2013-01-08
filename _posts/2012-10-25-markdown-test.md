
---
layout: post
title: "Markdown Test"
description: ""
category:
tags: markdown jekyll
---
{% include JB/setup %}

**兼容HTML**

    <table>
        <tr>
            <td>Foo</td>
        </tr>
    </table>

结果像这样

<table>
    <tr>
        <td>Foo</td>
    </tr>
</table>

**块状元素**

段落和换行 `</br>`

标题

    This is an H1
    =================

This is an H1
==============

    This is an H2
    ------------

This is an H2
-------------

    #这是H1

#这是H1

    ######这是H6

######这是H6

区域快引用

    > this is a blockquote

> this is a blockquote

区域块嵌套

    > this is the first level of quoting
    >
    >> this is the second
    >
    >> this is the first level

> this is the first level of quoting
>
>> this is the second

引用块也可以使用其他的Markdown语法，包括标题、列表、代码块等。

列表

    * Red
    * Blue
    * Green

    + Red
    + Blue
    + Green

    1. Bird
    2. McHale
    3. Parish

列表项目可以包含多个端扩，每个项目的段落必须缩进4个空格或一个tab

	1.  This is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendreritmi posuere lectus.

    	Vestibulum enim wisi, viverra nec, fringilla in, laoreevitae, risus. Donec sit amet nisl. Aliquam semper ipsum sit amet velit.

	2.  Suspendisse id sem consectetuer libero luctus adipiscing.

1.  This is a list item with two paragraphs. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam hendreritmi posuere lectus.

    Vestibulum enim wisi, viverra nec, fringilla in, laoreevitae, risus. Donec sit amet nisl. Aliquam semper ipsum sit amet velit.

2.  Suspendisse id sem consectetuer libero luctus adipiscing.

<pre><code>*   This is a list item with two paragraphs.

    This is the second paragraph in the list item. You\'re
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.

*   Another item in the same list.</code></pre>

*   This is a list item with two paragraphs.

    This is the second paragraph in the list item. You\'re
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.

*   Another item in the same list.

<pre><code>*   A list item with a blockquote:

    > This is a blockquote
    > inside a list item.</code></pre>

*   A list item with a blockquote:

    > This is a blockquote
    > inside a list item.
