<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Results:</h1>
Click for more info. 
<p>
<!--get member info-->
  %for m in members:
	<a href ="/members/{{ m.id }}/"> {{ m.firstname }} {{ m.lastname }} </a>
	<br>
  %end

</p>

<!--Back-->
<a href="/members/search/">Back</a>

