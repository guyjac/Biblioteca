<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Retrieve general information-->
<h1>Title: {{ books.title }}</h1> 

<b>ID:</b> {{ books.id }}<br>

<b>Year released:</b> {{books.year}}<br>

<b>Author:</b> {{books.author.firstname}} {{books.author.lastname}}<br>

<b>Publisher:</b> {{books.publisher.name}}<br>

<b>Genre:</b> {{books.genre.name}}<br>

<!--This queries the loans relationship we made-->
<h2>Loans</h2>
<ul>
  %for l in books.loans:
      <li><b>{{l.member.firstname}} {{l.member.lastname}}</b>  <br> From: {{l.loan_out_date}} Due: {{l.loan_due_date}} </li>
  %end
</ul>

<!--Editing a book-->
<a href="/books/{{books.id}}/edit/">Edit book</a><br>

<!--Delete book-->
<a href="/books/{{books.id}}/delete/">Delete book</a><br><br>

<!--Back-->
<a href="/books">Back</a>






