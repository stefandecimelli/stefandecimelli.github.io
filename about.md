---
layout: page
title: About
permalink: /about/
---

I am blogging now, watch out! 
Time to make every thought I have available on the internet for everyone to see, because they're taking up too much space in my dome.
I'm a software developer / programmer for work, and a serial hobbyist when I have the time to be. 

I also love making lists, so here's a general list of things I like:
- Sci-Fi and Fantasy Books 
  - Especially:
    - Game of Thrones
    - Lord of the Rings
    - Harry Potter
    - Dune
- Watching sports
  - I'm an Arsenal fan, try not to cry about it!
  - I'm also a Leafs fan, this one I cry about...
- Programming
- Video games

Some posts specifically about me:
<ul>
  {% for post in site.posts %}
    {% if post.url contains "meta" %}
      <li>[{{ post.date | date: "%Y-%m-%d" }}] <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endif %}
  {% endfor %}
</ul>
