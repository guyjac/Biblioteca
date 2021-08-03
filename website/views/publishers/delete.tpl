<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Retrieve general information-->
<h1>Deleting publisher: {{ publishers.name }} </h1> 

<!--Warns users of possible deletions-->

<h2>WARNING:</h2>
The following books and all related loans will also be deleted:
<ul>
  %for books in results:
      <li><b>{{books.title}}</b></li>
	  <!--Find the loans in books.loans link table. Iterate over the potential loans-->
	  %for loans in books.loans:
		{{loans.member.firstname}} {{loans.member.lastname}}  <br> From: {{loans.loan_out_date}} Due: {{loans.loan_due_date}}<br>
		%end
  %end
</ul>


Are you sure you want to continue?

<!--Delete book-->
<form action="/publishers/{{publishers.id}}/delete/" method="POST">
	<input type="submit" value="Delete">
</form>

<!--Back-->
<a href="/publishers/{{publishers.id}}/">Back</a>


