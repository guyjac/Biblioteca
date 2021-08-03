<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Retrieve general information-->
<h1>Deleting book: {{ books.title }}</h1> 

<!--Warns users of possible deletions-->
<h2>WARNING:</h2>
The following loans will also be deleted:
<ul>
  %for l in books.loans:
      <li><b> {{l.member.firstname}} {{l.member.lastname}} </b> <br> From: {{l.loan_out_date}} Due: {{l.loan_due_date}} </li>
  %end
</ul>



Are you sure you want to continue?

<!--Delete book-->
<form action="/books/{{books.id}}/delete/" method="POST">
<input type="submit" value="Delete">
</form>

<!--Back-->
<a href="/books/{{books.id}}/">Back</a>


