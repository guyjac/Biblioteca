<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Return a list of pubs, and a hyperlink to their ID, which will be passed to show template.-->

<h1>List of Publishers</h1>
<ul>
%for p in publishers:	
    <li><a href ="publishers/{{ p.id }}/"> {{ p.name }} - {{ p.country }} </a>
%end
</ul>

<ul>
	<li><a href ="publishers/add/">Add a publisher</a>
	<li><a href ="publishers/search/">Search for a publisher</a></li>
</ul>

<!--Back-->
<a href="/">Back</a>