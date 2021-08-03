<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Return a list of books, and a hyperlink to their ID, which will be passed to show template.-->

<h1>List of Books</h1>
<ul>
%for b in books:	
    <li><a href ="books/{{ b.id }}/"> {{ b.title }}, Released in {{ b.year }} </a>
%end
</ul>

<ul>
	<li><a href ="books/add/">Add a book</a>
	<li><a href ="books/search/">Search for a book</a></li>
</ul>

<!--Back-->
<a href="/">Back</a>