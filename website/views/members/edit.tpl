<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<h1>Editing member: {{members.firstname}} {{members.lastname}} </h1>
<form action="/members/{{members.id}}/edit/" method="POST">

	Firstname: 
	<input type="text" name="firstname" value="{{members.firstname}}"/>
	<br>
	Lastname 
	<input type="text" name="lastname" value="{{members.lastname}}"/>
	<br>
	Phone number:
  	<input type="text" name="phone_num" value="{{members.phone_num}}"/>
	<br>
	Address:  
	<input type="text" name="address" value="{{ members.address }}"/>
	<br>
	City:  
	<input type="text" name="city" value="{{ members.city }}"/>
	<br>
	Country: 
	<input type="text" name="country" value="{{ members.country }}"/>
	<br>
			
	<!--Save button-->
	<p>
	<input type="submit" value="Save">
	</p>
  
</form>

<!--Back-->
<a href="/members/{{members.id}}/">Back</a>
