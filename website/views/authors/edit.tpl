<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Editing author: {{authors.firstname}} {{authors.lastname}}</h1>
<form action="/authors/{{authors.id}}/edit/" method="POST">

	First name: 
	<input type="text" name="firstname" value="{{ authors.firstname }}"/>
	<br>
	Last name:
	<input type="text" name="lastname" value="{{ authors.lastname }}"/>
	<br>

	
	<!--Save button-->
	<p>
	<input type="submit" value="Save">
	</p>
  
</form>

<!--Back-->
<a href="/authors/{{authors.id}}/">Back</a>
