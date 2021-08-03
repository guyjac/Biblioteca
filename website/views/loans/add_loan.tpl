<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h2>New Loan</h2>

<form action="/loans/add/" method="POST">

	<b>Member: </b>
	<!--Dropdown of members-->
	<select name = "member"> 
	%for rows in members:
		<option value="{{rows.id}}">{{rows.firstname}} {{rows.lastname}}</option>
	%end
	</select>
	<br>

	<!--Checklist of books.-->
	<b>Books: </b>
	<br>
	%for rows in books:
		<input type="checkbox" name="books" value="{{rows.id}}"> {{rows.title}}<br>
	%end
	<br>
	
	Loan out date: 
	<input type="text" name="loan_out_date"/>
	<br>
	Loan due date: 
	<input type="text" name="loan_due_date"/>
	<br>
	
	<p>
		<input type="submit" value="Submit">
	</p>

</form> 

<!--Back-->
<a href="/members">Back</a>