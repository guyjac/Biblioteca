<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Editing genre: {{genres.name}} </h1>
<form action="/genres/{{genres.id}}/edit/" method="POST">

	Genre name: 
	<input type="text" name="name" value="{{ genres.name }}"/>
	<br>
	<!--Save button-->
	<p>
	<input type="submit" value="Save">
	</p>
  
</form>

<!--Back-->
<a href="/genres/{{genres.id}}/">Back</a>
