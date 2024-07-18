---
layout: default
---

{% include video_list.html %}

{% for event in past_conferences limit: 3 %}

  {% include box.md date=event.date ref=event.name title=event.name text=event.content %}

{% endfor %}
