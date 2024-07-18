<div class="resume-wrap ftco-animate">
    <span class="date">{{ include.date | date: "%-d %B %Y" }}</span>

{% if include.title %}
    {% if include.url %}
    <a href="{{ include.url }}">
    {% endif %}
    <h2>{{ include.title }}</h2>
    {% if include.url %}
    </a>
    {% endif %}
{% endif %}
{% if include.ref %}
    <span class="position">{{ include.ref }}</span>
{% endif %}
{% if include.text %}
    <p class="mt-4">{{ include.text }}</p>
{% endif %}

{% if include.tags %}
    {% for t in include.tags %}
      <a href="/topics/{{t}}">#{{ t }}</a>
    {% endfor %}
{% endif %}
</div>
