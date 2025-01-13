---
layout: default
---
All posts:
<ul>
  {% for post in site.posts %}
  <li>[{{ post.date | date: "%Y-%m-%d" }}] [{{ post.categories }}] <a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>