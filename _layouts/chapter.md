{% include header.html %} 
<body>
    {% include nav.html %} 
{%if page.status %}
<button>{{ page.status }} : last updated {{ page.date | date: "%b %d, %Y (%r %Z)" }}  </button>
{% endif %}
    <main class="container">
<article>
<blockquote>

<h4>
{%if page.image %}
<img src="{{ page.image }}">
{% endif %}
{{ page.title }}</h4>
    {{ page.intro }}
    <footer>
    <small><i><cite> {{page.takeaway}}</cite></i></small>
    </footer>
</blockquote>
</article>
<article>
{{ content }}
</article>
    </main>

{% include footer.html %}

</body>
</html>

