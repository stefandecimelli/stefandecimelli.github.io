---
layout: page
title: About
permalink: /about/
---

I am blogging now, watch out! 
Time to make every thought I have available on the internet for everyone to see, because they're taking up too much space in the dome.

I love making lists, so here's a general list of things I like:
- Sci-Fi and Fantasy 
  - especially:
    - Dune
    - Game of Thrones
    - Lord of the Rings
    - Harry Potter
- Modern classic books
- History and classics
- Hockey
  - I'm a Leafs fan, try not to cry about it!
- Java code
- Pasta

And some posts about me:
<ul>
  {% for post in site.posts %}
    {% if post.url contains "meta" %}
      <li>[{{ post.date | date: "%Y-%m-%d" }}] <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endif %}
  {% endfor %}
</ul>
