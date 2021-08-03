<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h2>New Member</h2>

<form action="/members/add/" method="POST">

	Firstname: 
	<input type="text" name="firstname" />
	<br>
	Lastname 
	<input type="text" name="lastname" />
	<br>
	Phone number:
  	<input type="text" name="phone_num" />
	<br>
	Address:  
	<input type="text" name="address" />
	<br>
	City:  
	<input type="text" name="city" />
	<br>
	Country: 
	<input type="text" name="country" />
	<br>

	<p>
		<input type="submit" value="Submit">
	</p>

</form> 

<!--Back-->
<a href="/members">Back</a>