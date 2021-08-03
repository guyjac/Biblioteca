<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Search for a genre</h1> 

<!--Allow users to search by country and name. submit form to be processed.-->

Search by:
<form action="/genres/search/" method="POST">
	<select name = "search"> 
		<option value="name">Search by name</option>
	</select>
	<br><br>
	Enter your query (Case sensitive):
	<br>
	<input type="text" name="query"/>
	<input type="submit" value="Search">
</form>

<!--Back-->
<a href="/genres">Back</a>





