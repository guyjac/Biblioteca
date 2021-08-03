<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Results:</h1>
Click for more info. 
<p>
<!--get auth info-->
  %for a in authors:
	<a href ="/authors/{{ a.id }}/"> {{ a.firstname }} {{ a.lastname }} </a>
	<br>
  %end

</p>

<!--Back-->
<a href="/authors/search/">Back</a>

