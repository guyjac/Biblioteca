<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Editing publisher: {{publishers.name}} </h1>
<form action="/publishers/{{publishers.id}}/edit/" method="POST">

	Publisher name: 
	<input type="text" name="name" value="{{ publishers.name }}"/>
	<br>
	Last name:
	<input type="text" name="country" value="{{ publishers.country }}"/>
	<br>

	
	<!--Save button-->
	<p>
	<input type="submit" value="Save">
	</p>
  
</form>

<!--Back-->
<a href="/publishers/{{publishers.id}}/">Back</a>
