<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Retrieve general information-->
<h1>Deleting loan: {{ loans.member.firstname }} {{ loans.member.lastname }} </h1> 
<b>ID:</b> {{loans.id}}

<br>
<br>
%for l in loans.books:
	<b>Book:</b> {{l.title}}
	<br>
%end
<br>
<b>From:</b> {{ loans.loan_out_date }}
<br>
<b>Due:</b> {{ loans.loan_due_date }}
<br>
<br>
<!--Warns users of possible deletions-->
Are you sure you want to continue?

<!--Delete loan-->
<form action="/loans/{{loans.id}}/delete/" method="POST">
	<input type="submit" value="Delete">
</form>

<!--Back-->
<a href="/loans/{{loans.id}}/">Back</a>


