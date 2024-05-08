{% include header.html %} 
<body>
    {% include nav.html %} 
        {{ title }} 
    <main class="container">
            <article>
                <header>{{ intro }} </header>
                <i>{{ takeaway }}</i>
            </article>
            {{ content }}

    </main>

{% include footer.html %}

</body>
</html>

