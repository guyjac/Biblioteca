<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h2>New book</h2>

<form action="/books/add/" method="POST">
  Title:<br>
  <input type="text" name="title" >
  <br>
  Year released:<br>
  <input type="text" name="year">
  <br>
  
  <!--Loops for authors, publishers and genres. -->
	Author:
	<br>
	<select name = "author"> 
	%for rows in authors:
		<option value="{{rows.id}}">{{rows.firstname}} {{rows.lastname}}</option>
	%end
	</select>
	<br>

	Publisher:
	<br>
	<select name = "publisher"> 
	%for rows in publishers:
		<option value="{{rows.id}}">{{rows.name}}</option>
	%end
	</select>
	<br>

	Genre:
	<br>
	<select name = "genre"> 
	%for rows in genres:
		<option value="{{rows.id}}">{{rows.name}}</option>
	%end
	</select>
  
  <br><br>
  <input type="submit" value="Submit">
</form> 

<!--Back-->
<a href="/books">Back</a>