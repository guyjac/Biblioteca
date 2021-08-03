<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Return a list of members, and a hyperlink to their ID, which will be passed to show template.-->

<h1>List of members</h1>
<ul>
%for m in members:	
    <li><a href ="members/{{ m.id }}/"> {{ m.firstname }} {{ m.lastname }}</a>
%end
</ul>

<ul>
	<li><a href ="members/add/">Add a member</a>
	<li><a href ="members/search/">Search for a member</a></li>
</ul>

<!--Back-->
<a href="/">Back</a>