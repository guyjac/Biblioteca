<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Retrieve general information-->
<h1>Author: {{ authors.firstname }} {{ authors.lastname }}</h1> 

<b>ID:</b> {{ authors.id }}<br>



<!--This queries the authors books-->
<h2>Authors Books</h2>
<ul>
  %for b in authors.books:
      <li>{{b.title}}</li>
  %end
</ul>

<!--Editing an author-->
<a href="/authors/{{authors.id}}/edit/">Edit author</a><br>

<!--Delete authors-->
<a href="/authors/{{authors.id}}/delete/">Delete author</a><br><br>

<!--Back-->
<a href="/authors">Back</a>






