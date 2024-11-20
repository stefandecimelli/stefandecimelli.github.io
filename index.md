---
layout: default
---
I’ve always believed that writing is one of the best ways to sharpen your thinking and improve as a writer—whether it’s through sharing opinions, exploring ideas, or just jotting down thoughts that seem worth revisiting. This blog is my corner of the internet to do exactly that. I’m always curious about what others are thinking, reading, or creating. If you want to chat about anything you find here, or have your own ideas to share, send me a message on [LinkedIn](https://www.linkedin.com/in/stefandecimelli/).

 <a href="/all">Click here to see all posts!</a>

Most recent posts:
{% for post in site.posts limit:10 %}
<p style="color:#828282;margin-bottom:0">{{ post.date | date: "%Y-%m-%d" }} <a href="{{ post.url }}">
	<h2>{{ post.title }}</h2>
</a></p>
{% endfor %}

<br/>
<p class="rss-subscribe">subscribe <a href="/feed.xml">via RSS</a></p>