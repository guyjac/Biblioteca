<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Retrieve general information-->
<h1>Deleting member: {{ members.firstname }} {{ members.lastname }} </h1> 

<!--Warns users of possible deletions-->

<h2>WARNING:</h2>
The following loans will also be deleted:
<ul>
	%for r in results:
		%for books in r.books:
			<li><b>{{books.title}}</b></li>
		%end
		From: {{r.loan_out_date}} Due: {{r.loan_due_date}}
	%end
</ul>


Are you sure you want to continue?

<!--Delete book-->
<form action="/members/{{members.id}}/delete/" method="POST">
	<input type="submit" value="Delete">
</form>

<!--Back-->
<a href="/members/{{members.id}}/">Back</a>


