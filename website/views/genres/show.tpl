<head>
<link rel="stylesheet" href="/css/style.css">
</head>

<!--Retrieve general information-->
<h1>Genre: {{ genres.name }} </h1> 

<b>ID:</b> {{ genres.id }}<br>

<!--This queries the books in a given genre-->
<h2>Books in this genre</h2>
<ul>
  %for b in genres.books:
      <li>{{b.title}}</li>
  %end
</ul>

<!--Editing an genre-->
<a href="/genres/{{genres.id}}/edit/">Edit genre</a><br>

<!--Delete genre-->
<a href="/genres/{{genres.id}}/delete/">Delete genre</a><br><br>

<!--Back-->
<a href="/genres">Back</a>






