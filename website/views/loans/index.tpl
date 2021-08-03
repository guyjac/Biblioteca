<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Return a list of loans, and a hyperlink to their ID, which will be passed to show template.-->

<h1>List of loans</h1>
<ul>
%for l in loans:	
    <li><a href ="loans/{{ l.id }}/"> {{ l.member.firstname }} {{l.member.lastname}}, Returned: {{ l.returns }} </a>
%end
</ul>

<ul>
	<li><a href ="loans/add/">Add a loan</a>
	<li><a href ="loans/search/">Search for a loan</a></li>
</ul>

<!--Back-->
<a href="/">Back</a>