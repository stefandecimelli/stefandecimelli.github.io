---
layout: page
title: About
permalink: /about/
---

I am a Software Developer looking for something to do. So now I am blogging.

Here is a list of things I like:
- Fantasy books
- Toronto Maple Leafs
- Java
- Pasta

Posts about me:
<ul>
  {% for post in site.posts %}
    {% if post.url contains "meta" %}
      <li>[{{ post.date | date: "%Y-%m-%d" }}] <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endif %}
  {% endfor %}
</ul>
