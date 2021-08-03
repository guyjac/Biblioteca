<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Results:</h1>
Click for more info. 
<p>
<!--get book info-->
  %for p in publishers:
	<a href ="/publishers/{{ p.id }}/"> {{ p.name }} - {{ p.country}} </a>
	<br>
  %end

</p>

<!--Back-->
<a href="/publishers/search/">Back</a>

