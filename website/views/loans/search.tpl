
<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Search for a loan</h1> 

<!--Allow users to search by member id or book id. submit form to be processed.-->

Search by:
<form action="/loans/search/" method="POST">
	<select name = "search"> 
		<option value="mid">Search by member id</option>
		<option value="bid">Search by book id</option>
	</select>
	<br><br>
	Enter your query (Case sensitive):
	<br>
	<input type="text" name="query"/>
	<input type="submit" value="Search">
</form>

<!--Back-->
<a href="/loans">Back</a>





