<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Results:</h1>
Click for more info. 
<p>
<!--get member info-->
  %for m in loans:
	<a href ="/loans/{{ m.id }}/"> {{ m.member.firstname }} {{ m.member.lastname }} - From: {{ m.loan_out_date }} To: {{ m.loan_due_date }} </a>
	<br>
  %end

</p>

<!--Back-->
<a href="/loans/search/">Back</a>

