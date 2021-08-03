<head>
<link rel="stylesheet" href="/css/style.css">
</head>


<h1>Search for a book</h1> 

<!--Allow users to search by title, author or publisher. submit form to be processed.-->

Search by:
<form action="/books/search/" method="POST">
	<select name = "search"> 
		<option value="title">Search by title</option>
		<option value="author">Search by author</option>
		<option value="publisher">Search by publisher</option>
	</select>
	<br><br>
	Enter your query (Case sensitive):
	<br>
	<input type="text" name="query"/>
	<input type="submit" value="Search">
</form>

<!--Back-->
<a href="/books">Back</a>




