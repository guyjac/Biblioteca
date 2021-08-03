<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Return a list of genres, and a hyperlink to their ID, which will be passed to show template.-->

<h1>List of Genres</h1>
<ul>
%for g in genres:	
    <li><a href ="genres/{{ g.id }}/"> {{ g.name }}</a>
%end
</ul>

<ul>
	<li><a href ="genres/add/">Add a genre</a>
	<li><a href ="genres/search/">Search for a genre</a></li>
</ul>

<!--Back-->
<a href="/">Back</a>