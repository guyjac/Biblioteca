<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Editing book: {{books.title}}</h1>
<form action="/books/{{books.id}}/edit/" method="POST">

	Title: 
	<input type="text" name="title" value="{{ books.title }}"/>
	<br>
	Year:
	<input type="text" name="year" value="{{ books.year }}"/>
	<br>
	<!--Loop to create a dropdown list of all the possible authors.-->
	<!--This stops users from choosing an author/publisher etc who doesn't exist.-->
	Author:
	<select name = "author"> 
	%for rows in authors:
		<option value="{{rows.id}}">{{rows.firstname}} {{rows.lastname}}</option>
	%end
	</select>
	<br>
	
	Publisher:
	<select name = "publisher"> 
	%for rows in publishers:
		<option value="{{rows.id}}">{{rows.name}}</option>
	%end
	</select>
	<br>
	
	Genre:
	<select name = "genre"> 
	%for rows in genres:
		<option value="{{rows.id}}">{{rows.name}}</option>
	%end
	</select>
	
	<!--Save button-->
	<p>
	<input type="submit" value="Save">
	</p>
  
</form>

<!--Back-->
<a href="/books/{{books.id}}/">Back</a>
