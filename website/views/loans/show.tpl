<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Retrieve general information-->
<h1>Loan: {{ loans.member.firstname }} {{ loans.member.lastname }} </h1> 
<b>ID:</b> {{loans.id}}
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
<b>Returned: {{loans.returns}}</b>
<br>
<br>

<!--Editing an loan-->
<a href="/loans/{{loans.id}}/edit/">Edit loan</a><br>


<!--Return a loan-->
<a href="/loans/{{loans.id}}/return/">Return loan</a><br>

<!--Delete member-->
<a href="/loans/{{loans.id}}/delete/">Delete loan</a><br><br>

<!--Back-->
<a href="/loans">Back</a>






