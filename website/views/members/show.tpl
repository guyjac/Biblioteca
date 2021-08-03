<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Retrieve general information-->
<h1>Member: {{ members.firstname }} {{ members.lastname }} </h1> 

<b>ID:</b> {{ members.id }}<br>
<b>Phone number: </b> {{ members.phone_num }}<br>
<b>Address: </b> {{ members.address }}<br>
<b>City: </b> {{ members.city }}<br>
<b>Country:</b> {{ members.country }}<br>

<!--This queries the loans relationship we made-->
<h2>{{ members.firstname }}(s) loans</h2>

<!--Query the users loans. Then query the book names, within the loans.-->
<ul>
	%for l in members.loans:
		%for b in l.books:
			<li><b>{{b.title}}</b></li>
		%end
		From: {{l.loan_out_date}} Due: {{l.loan_due_date}}
	%end
</ul>

<!--Editing an member-->
<a href="/members/{{members.id}}/edit/">Edit member</a><br>

<!--Delete member-->
<a href="/members/{{members.id}}/delete/">Delete member</a><br><br>

<!--Back-->
<a href="/members">Back</a>






