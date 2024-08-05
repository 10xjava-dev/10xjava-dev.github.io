---
layout: topic
icon: flaticon-flasks
title: DevOps
tag: devrel
short: DevOps
teaser: The Dev in DevOps
---

{% for t in site.data.contribution_types %}
<h1>{{t[1].name}}</h1>
{% endfor %}

{% assign items_grouped = site.content | group_by: 'layout' %}


{{ site.data.contribution_types.snippet }}

{% for post in items_grouped %}
{% assign author = site.data.contribution_types[post.name] %}

XXX  {{ author.name}}  YYY  
{% endfor %}
