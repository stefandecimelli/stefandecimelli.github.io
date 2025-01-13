---
layout: default
---
{% assign total_words = 0 %}

{% for post in site.posts %}
    {% assign post_word_count = post.content | number_of_words %}
    {% assign total_words = total_words | plus: post_word_count %}
{% endfor %}
All posts:
<br/>
<i style="color:#999">Total word count: {{ total_words }}</i>
<ul>
  {% for post in site.posts %}
  <li>[{{ post.date | date: "%Y-%m-%d" }}] [{{ post.categories }}] <a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>