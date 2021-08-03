<head>
<link rel="stylesheet" href="/css/style.css">
</head>


<h1>Search for a book</h1> 

<!--Allow users to search by first and last name. submit form to be processed.-->

Search by:
<form action="/authors/search/" method="POST">
	<select name = "search"> 
		<option value="firstname">Search by firstname</option>
		<option value="lastname">Search by lastname</option>
	</select>
	<br><br>
	Enter your query (Case sensitive):
	<br>
	<input type="text" name="query"/>
	<input type="submit" value="Search">
</form>

<!--Back-->
<a href="/authors">Back</a>





