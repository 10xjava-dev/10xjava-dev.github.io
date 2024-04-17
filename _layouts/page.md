<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css">
    <title>{{ title }}</title>
</head>
<body>
    {% include nav.html %} 
    
    <main class="container">
       
            {{ content }}
       
    </main>
  
{% include footer.html %}
  
</body>
</html>

