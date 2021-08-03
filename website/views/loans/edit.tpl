<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Editing loan: {{ loans.member.firstname }} {{ loans.member.lastname }} </h1>
<b>ID:</b> {{loans.id}}
<form action="/loans/{{loans.id}}/edit/" method="POST">

	<b>Member: </b>
	<!--Dropdown of members-->
	<select name = "member"> 
	%for rows in members:
		<option value="{{rows.id}}">{{rows.firstname}} {{rows.lastname}}</option>
	%end
	</select>
	<br>
	
	<b>Books: </b>
	<br>
	<!--Checklist of books.-->
	%for rows in books:
		<input type="checkbox" name="books" value="{{rows.id}}"> {{rows.title}}<br>
	%end
	<br>
	
	<b>Out date:  </b>
	<input type="text" name="loan_out_date" value="{{ loans.loan_out_date }}"/>
	<br>
	
	<b>Due date:</b>
  	<input type="text" name="loan_due_date" value="{{ loans.loan_due_date }}"/>
	<br>
		
	<!--Save button-->
	<p>
	<input type="submit" value="Save">
	</p>
  
</form>

<!--Back-->
<a href="/loans/{{loans.id}}/">Back</a>
