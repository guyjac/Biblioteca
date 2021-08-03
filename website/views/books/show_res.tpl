<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Results:</h1>
Click for more info. 
<p>
<!--get book info-->
  %for b in books:
	<a href ="/books/{{ b.id }}/"> {{ b.title }}, Released in {{ b.year }} </a>
	<br>
  %end

</p>

<!--Back-->
<a href="/books/search/">Back</a>

