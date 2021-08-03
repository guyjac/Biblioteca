<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Return a list of books, and a hyperlink to their ID, which will be passed to show template.-->

<h1>List of Authors</h1>
<ul>
%for a in authors:	
    <li><a href ="authors/{{ a.id }}/"> {{ a.firstname }}, {{ a.lastname }} </a>
%end
</ul>

<ul>
	<li><a href ="authors/add/">Add an author</a>
	<li><a href ="authors/search/">Search for an author</a></li>
</ul>

<!--Back-->
<a href="/">Back</a>