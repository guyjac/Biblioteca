<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Retrieve general information-->
<h1>Publisher: {{ publishers.name }} </h1> 

<b>ID:</b> {{ publishers.id }}<br>
<b>Region:</b> {{ publishers.country }}
<br>





<!--This queries the loans relationship we made-->
<h2>Publishers Books</h2>
<ul>
  %for b in publishers.books:
      <li>{{b.title}}</li>
  %end
</ul>

<!--Editing an author-->
<a href="/publishers/{{publishers.id}}/edit/">Edit publisher</a><br>

<!--Delete authors-->
<a href="/publishers/{{publishers.id}}/delete/">Delete publisher</a><br><br>

<!--Back-->
<a href="/publishers">Back</a>






