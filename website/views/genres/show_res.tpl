<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Results:</h1>
Click for more info. 
<p>
<!--get genre info-->
  %for g in genres:
	<a href ="/genres/{{ g.id }}/"> {{ g.name }} </a>
	<br>
  %end

</p>

<!--Back-->
<a href="/genres/search/">Back</a>

