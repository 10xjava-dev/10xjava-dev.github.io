<div class="resume-wrap ftco-animate">
    <span class="date">{{ include.date | date: "%-d %B %Y" }}</span>


<div class="card">
   <div class="card-body" >


{% if include.title %}
    {% if include.url %}
    <a href="{{ include.url }}">
    {% endif %}
    
    <h2  class="card-title" style="color:black;">{{ include.title }}</h2>
    {% if include.url %}
    </a>
    {% endif %}
{% endif %}
   
    <p class="card-text">
 {% if include.ref %}
    <span class="position" style="color:black;">{{ include.ref }}</span>
{% endif %}
{% if include.text %}
    <p class="mt-4" style="color:black;">{{ include.text }}</p>
{% endif %}
    </p>
    
{% if include.tags %}
    {% for t in include.tags %}
        <a href="/topics/{{t}}">#{{ t }}</a>
    {% endfor %}
{% endif %}
  </div>
</div>

</div>
